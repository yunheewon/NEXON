package com.nexon.controller.mail;
import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.activation.DataSource;

public class ByteArrayDataSource implements DataSource{

	byte[] bytes;
    String contentType;
    String name;

    ByteArrayDataSource(byte[] bytes, String contentType, String name) {
       this.bytes = bytes;
       if(contentType == null)
          this.contentType = "application/octet-stream";
       else
          this.contentType = contentType;
       this.name = name;
    }
    
    //여기서 byte 배열은 첨부되는 파일을 나타낸다. 
    //this.contentType = "application/octet-stream";는 첨부되는 파일의 MIME타입을 지정하는 것.
    //옥텟 스트림은 이름에서 처럼 8비트 단위의 바이너리 데이터를 의미
    //특별히 표현할 수 있는 프로그램이 존재하지 않는 데이터의 경우 기본값으로 사용
    //MIME 란?
    //이메일에 첨부된 파일을 텍스트 문자 형태로 변환해서 이메일과 함께 전송하기 위해 개발된 포맷
    
	
	@Override
	public String getContentType() {//데이터의 MIME 타입을 리턴
		// TODO Auto-generated method stub
		return contentType;
	}
	
	//전자우편은 7비트 ASCII코드를 사용하여 전송되기 때문에 문자 데이터 이외의 바이너리 데이터(이미지, 동영상, 워드 문서..)를 전송할 수 없었음.
	//때문에 여러 멀티미디어 데이터들의 바이너리 데이터를 ASCII코드로 변환하는 방법(인코딩)과 미디어 종류를
	//MIME 타입 목록으로 정의하였고, MIME 사양에 따라 멀티미디어 파일의 데이터를 ASCII 데이터로 변환 후 전송하였음.
	

	@Override
	public InputStream getInputStream() throws IOException {//데이터를 읽어올 수 있는 InputStream을 리턴
		// TODO Auto-generated method stub
		return new ByteArrayInputStream(bytes,0,bytes.length - 2);
	}
	//생성자에서 파라미터로 전달받은 byte 배열로부터 데이터를 읽어옴
	//이때 가장 마지막의 2글자는 사용하지 않는데, 이는 웹 브라우저가 웹 서버에 
	// "multipart/form-data" 인코딩 타입을 사용하여 데이터를 전송할 때에는 각 필드의 마지막에 "\r\n"을 추가하기 때문
	
	@Override
	public String getName() {//객체의 이름을 리턴
		// TODO Auto-generated method stub
		return name;
	}

	@Override
	public OutputStream getOutputStream() throws IOException {//데이터를 쓸 수 있는 OutStream을 리턴
		// TODO Auto-generated method stub
		throw new FileNotFoundException();
	}

}
