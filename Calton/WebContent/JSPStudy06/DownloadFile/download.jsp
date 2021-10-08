<%@page import="myUtil.HanConv"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@ page import="java.nio.file.Path"%>
<%@ page import="java.nio.file.Paths"%>
<%@ page import="java.io.File"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%    
	String filePath = HanConv.toKor((String)request.getParameter("filepath"));		// ������ ����� ���� ��� (�ѱ�ó��)
	String filename = Paths.get(filePath).getFileName().toString();					// ������ ����� ���� ����� ���ϸ� ������

    try {
        
    	 
        // ������ �о� ��Ʈ���� ���
        File file = new File(filePath);
        FileInputStream in = new FileInputStream(file);
        OutputStream os = null;
 
        String client = request.getHeader("User-Agent");
 
        // ���� �ٿ�ε� ��� ����
        response.reset();
        response.setContentType("application/octet-stream");
        
        
        // ���ͳ� �ͽ��÷η�
        if(client.indexOf("MSIE") != -1){
        	filename = new String(filename.getBytes("KSC5601"),"ISO8859_1");
            response.setHeader ("Content-Disposition", "attachment; filename=" + filename);

        // ũ��, ���ĸ� ��
        } else {
        	
        	// HanConv.toKor �Լ����� iso-8859-1 ���ڵ� �������� �о euc_kr �������� ���ڵ��� �ٲ�����
        	// �ݴ�� euc_kr ���ڵ��� iso-8859-1 ���ڵ����� �ٲ�����Ѵ�.
        	filename = new String(filename.getBytes("euc_kr"),"iso-8859-1");
            response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
            response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
        } 
         
        response.setHeader ("Content-Length", ""+file.length() );

        
 	    //�� ���ٷ� �������� ������ ������ �κ��� �ʱ�ȭ �ϴ� �۾��� �Ѵٰ� �����ϸ� �˴ϴ�.
        //out.clear(); // ��Ʈ���� ����ϰ� ����. �׷� ��δ� ������� �� ��θ� ������ Ż���� �ʿ��ϰ���!
        //out = pageContext.pushBody(); // jsp �������� ���� ����(�ٿ�ε�)�� �����ϴ� ����� �Ѵ�.
        
        /*
	         jsp���� �ٸ� jsp �� �ִ� �������� ȣ���ؼ� �ٿ�ε� ������ �����ϴ� ��� 
			  �̹� ��Ʈ���� ���� �ִ� ���� �Դϴ�. ���� �߰������� ��Ʈ���� ������ �ϸ� ���� ���� ���� �޼����� �����ϴ� ���Դϴ�.
        */
        
        os = response.getOutputStream();
        byte b[] = new byte[(int)file.length()];
        int leng = 0;
         
        while( (leng = in.read(b)) > 0 ){
            os.write(b, 0, leng);
        }
 
        in.close();
        os.flush();
        os.close(); 
 
    }catch(Exception e){
      e.printStackTrace();
    }
%>   