package com.nexon.controller.mail;


import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.StringTokenizer;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WebSendMail
*/
@WebServlet("/WebSendMail")
public class WebSendMail extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	//default 이메일 주소
	String to = "hewon5@naver.com";
	 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        PrintWriter out = response.getWriter();
        
        if (request.getContentType().startsWith("multipart/form-data")) {
            try {
                HashMap data = getMailData(request, response);
                sendMail(data);
 
//                ServletContext sc = getServletContext();
//                RequestDispatcher rd = sc.getRequestDispatcher("/qna/thankyou.jsp");
//                rd.forward(request, response);

                out.println("<script>alert('메일이 성공적으로 전송되었습니다.'); history.go(-2);</script>"); 
                out.close();
            } catch (MessagingException ex) {
                throw new ServletException(ex);
            }
        } else {
        	out.println("<script>alert('메일 전송을 실패하였습니다.'); history.go(-1);</script>"); 
            out.close();
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
    //사용자가 전송한 데이터 타입이 "multipart/form-data"인지 검사
    //만약 맞다면, getMailData() 메서드를 사용하여 사용자가 폼을 통해서 입력한 메일 데이터를 읽어오고
    //sendMail() 메서드를 사용하여 메일을 전송
    //getMailData()는 "multipart/form-data"타입으로 전송된 데이터로부터 사용자가 입력한
    //데이터를 추출해서 HashMap에 저장 
    //HashMap에 저장할 때 사용되는 키 값은 폼의 name 속성과 같음
    
    private HashMap getMailData(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException, MessagingException {
		String boundary = request.getHeader("Content-Type");
		//boundary는 메세지 파트를 구분하는 역할
		int pos = boundary.indexOf('=');
		boundary = boundary.substring(pos + 1);
		boundary = "--" + boundary;
		ServletInputStream in = request.getInputStream();
		byte[] bytes = new byte[512];
		int state = 0;
		ByteArrayOutputStream buffer = new ByteArrayOutputStream();
		String name = null, value = null, filename = null, contentType = null;
		HashMap mailData = new HashMap();

		int i = in.readLine(bytes, 0, 512);
		while (-1 != i) {
			String st = new String(bytes, 0, i);
			if (st.startsWith(boundary)) {
				state = 0;
				if (null != name) {
					if (value != null)
						// -2 to remove CR/LF
						mailData.put(name, value.substring(0, value.length() - 2));
					else if (buffer.size() > 2) {
						//사용자가 전송한 파일 데이터를 읽어와 MimeBodyPart 객체에 저장하는 부분
						MimeBodyPart bodyPart = new MimeBodyPart();
						DataSource ds = new ByteArrayDataSource(buffer.toByteArray(), contentType, filename);
						bodyPart.setDataHandler(new DataHandler(ds));
						bodyPart.setDisposition("attachment; filename=\"" + filename + "\"");
						bodyPart.setFileName(filename);
						mailData.put(name, bodyPart);
					}
					name = null;
					value = null;
					filename = null;
					contentType = null;
					buffer = new ByteArrayOutputStream();
				}
			} else if (st.startsWith("Content-Disposition: form-data") && state == 0) {
				StringTokenizer tokenizer = new StringTokenizer(st, ";=\"");
				while (tokenizer.hasMoreTokens()) {
					String token = tokenizer.nextToken();
					if (token.startsWith(" name")) {
						name = tokenizer.nextToken();
						state = 2;
					} else if (token.startsWith(" filename")) {
						filename = tokenizer.nextToken();
						StringTokenizer ftokenizer = new StringTokenizer(filename, "\\/:");
						filename = ftokenizer.nextToken();
						while (ftokenizer.hasMoreTokens())
							filename = ftokenizer.nextToken();
						state = 1;
						break;
					}
				}
			} else if (st.startsWith("Content-Type") && state == 1) {
				pos = st.indexOf(":");
				// + 2 to remove the space
				// - 2 to remove CR/LF
				contentType = st.substring(pos + 2, st.length() - 2);
			} else if (st.equals("\r\n") && state == 1)
				state = 3;
			else if (st.equals("\r\n") && state == 2)
				state = 4;
			else if (state == 4)
				value = value == null ? st : value + st;
			else if (state == 3)
				buffer.write(bytes, 0, i);
			i = in.readLine(bytes, 0, 512);
		}
		return mailData;
	}
    //getMailData() 메소드는 사용자가 폼에 입력한 값을 HashMap인 mailData에 저장

    private void sendMail(HashMap mailData) throws MessagingException {
        System.setProperty("mail.smtp.starttls.enable", "true"); // gmail은 무조건 true 고정
        System.setProperty("mail.smtp.auth", "true"); // gmail은 무조건 true 고정
        System.setProperty("mail.smtp.host", "smtp.gmail.com"); // smtp 서버 주소
        System.setProperty("mail.smtp.port", "587"); // gmail 포트
        //구글 인증
        Authenticator auth = new MyAuthentication();
        Message msg = new MimeMessage(Session.getDefaultInstance(System.getProperties(), auth));
        //받는사람
        to = (String)mailData.get("email");//input태그 email에 입력받은 값으로 받는 사람 변경
        InternetAddress[] tos = InternetAddress.parse(to);
        msg.setRecipients(Message.RecipientType.TO, tos);
        //한글을 위한 인코딩
        msg.setHeader("Content-Type", "text/plain; charset=UTF-8");
        //제목
        msg.setSubject((String)mailData.get("tit"));
        msg.setSentDate(new Date());
        
        String all = "게임 : " + (String)mailData.get("game") + "\n" + 
        "문의 분류 : " + (String)mailData.get("kind") + "\n" +
        	"문의 내용 : "	+ (String)mailData.get("content");
        
        //첨부파일이 없으면 내용만 전송
        if(null == mailData.get("attachment")){
                //msg.setText((String)mailData.get("content"));
        		msg.setText(all);
          } else {
            //첨부파일이 있으면
	    	  BodyPart body = new MimeBodyPart();
	          BodyPart attachment = (BodyPart)mailData.get("attachment");
	          //body.setText((String)mailData.get("content"));
	          body.setText(all);
	          MimeMultipart multipart = new MimeMultipart();
	          multipart.addBodyPart(body);
	          multipart.addBodyPart(attachment);
	          msg.setContent(multipart, "text/plain; charset=UTF-8");
           }
        //전송
        Transport.send(msg);
    }

    class MyAuthentication extends Authenticator {
    	 
        private PasswordAuthentication pa;
        private String id;
        private String pw;
 
        private MyAuthentication() {
 
            id = ""; // 구글 ID
            pw = ""; // 구글 비밀번호
            pa = new PasswordAuthentication(id, pw);
        }
 
        // 시스템에서 사용하는 인증정보
        public PasswordAuthentication getPasswordAuthentication() {
            return pa;
        }
    }

}
