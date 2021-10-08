<%@page import="java.nio.file.Files"%>
<%@page import="java.nio.file.*"%>
<%@page import="com.jspsmart.upload.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	
	// <��ũ�����̽� ��>/.metadata/plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/<������Ʈ ��>/upload
	// ���� ��θ��� ��´�.
	String uploadPath = getServletContext().getRealPath("upload");
	
	Path dir = Paths.get(uploadPath);
	out.print("���ε� ��� : " + dir.toString() + "<br>");
	
	
	if (!Files.exists(dir)) {
		Files.createDirectories(dir);
		out.print(dir + "��ΰ� �������� �ʾƼ� �����߽��ϴ�. <br>");
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
			
			// ���ε� ��ο� ���� ��θ� ���ؼ� �����Ѵ�.
			// upload/ + fsefes.txt -> upload/fsefes.txt
			file.saveAs(Paths.get(uploadPath, file.getFileName()).toString());
			
			// ���ε�� ���� ����Ȯ��
			out.print("�� �±� �ʵ� �̸� : " + file.getFieldName() + "<br>");
			out.print("���� �̸� : " + file.getFileName() + "<br>");
			out.print("���� ũ�� : " + file.getSize() + "<br>");
			out.print("���� Ȯ���� : " + file.getFileExt() + "<br>");
			out.print("���� ��� : " + file.getFilePathName() + "<br>");
			out.print("<br>-------------------------------------------------------<br>");
			cnt++;
		}
	}
	
	out.print("���� " + cnt + "���� ���ε� �߽��ϴ�.");

%>
