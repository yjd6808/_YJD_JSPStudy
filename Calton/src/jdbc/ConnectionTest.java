package jdbc;

import java.sql.*;

public class ConnectionTest {

	public static void main(String[] args) throws Exception {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection connection = DriverManager.getConnection( 
					"jdbc:oracle:thin:@localhost:1521:XE", 
					"scott", 
					"tiger");
			
			if (connection != null) {
				System.out.println("������ ���������� �̷������ϴ�.");
			}			
		} catch (Exception e) {
			System.out.println("���ῡ �����Ͽ����ϴ�.\n" + e.getMessage() + "\n\n");
			e.printStackTrace();
		}
		
	}

}
