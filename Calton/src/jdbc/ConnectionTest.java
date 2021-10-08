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
				System.out.println("연결이 성공적으로 이뤄졌습니다.");
			}			
		} catch (Exception e) {
			System.out.println("연결에 실패하였습니다.\n" + e.getMessage() + "\n\n");
			e.printStackTrace();
		}
		
	}

}
