<%@page import="java.nio.file.Files"%>
<%@page import="java.nio.file.*"%>
<%@page import="com.jspsmart.upload.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	
	// <워크스페이스 명>/.metadata/plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/<프로젝트 명>/upload
	// 위의 경로명을 얻는다.
	String uploadPath = getServletContext().getRealPath("upload");
	
	Path dir = Paths.get(uploadPath);
	out.print("업로드 경로 : " + dir.toString() + "<br>");
	
	
	if (!Files.exists(dir)) {
		Files.createDirectories(dir);
		out.print(dir + "경로가 존재하지 않아서 생성했습니다. <br>");
	}
	
	// =================================================
	
	SmartUpload upload = new SmartUpload();
	upload.initialize(pageContext);
	upload.upload();
	
	int last = upload.getFiles().getCount();
	int cnt = 0;
	
	for (int i = 0; i < last; i++) {
		File file = upload.getFiles().getFile(i);
		
		if (!file.isMissing()) {
			
			// 업로드 경로와 파일 경로를 더해서 저장한다.
			// upload/ + fsefes.txt -> upload/fsefes.txt
			file.saveAs(Paths.get(uploadPath, file.getFileName()).toString());
			
			// 업로드된 파일 정보확인
			out.print("폼 태그 필드 이름 : " + file.getFieldName() + "<br>");
			out.print("파일 이름 : " + file.getFileName() + "<br>");
			out.print("파일 크기 : " + file.getSize() + "<br>");
			out.print("파일 확장자 : " + file.getFileExt() + "<br>");
			out.print("파일 경로 : " + file.getFilePathName() + "<br>");
			out.print("<br>-------------------------------------------------------<br>");
			cnt++;
		}
	}
	
	out.print("파일 " + cnt + "개를 업로드 했습니다.");

%>
