package magic.member;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import myUtil.*;

public class MemberDBBean {
	private static MemberDBBean instance=new MemberDBBean();
	
	public static MemberDBBean getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}
	
	public int insertMember(MemberBean member) throws Exception{
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="insert into memberT values(?,?,?,?,?,?)";
		int re=-1;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMem_uid());
			pstmt.setString(2, member.getMem_pwd());
			pstmt.setString(3, HanConv.toKor(member.getMem_name()));
			pstmt.setString(4, member.getMem_email());
			pstmt.setTimestamp(5, member.getMem_regdate());
			pstmt.setString(6, member.getMem_address());
			pstmt.executeUpdate();
			
			re = 1;
			pstmt.close();
			conn.close();
			System.out.println("추가 성공");
		} catch (Exception e) {
			System.out.println("추가 실패");
			e.printStackTrace();
		}
		
		return re;
	}
	
	public int confirmID(String id) throws Exception{
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select mem_uid from MEMBERT where mem_uid=?";
		int re=-1;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				re = 1;
			} else {
				re = -1;
			}
			
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return re;
	}
	
	public int userCheck(String id, String pwd) throws Exception{
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select mem_pwd from MEMBERT where mem_uid=?";
		int re=-1;
		String db_mem_pwd;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				db_mem_pwd = rs.getString("mem_pwd");
				
				if (db_mem_pwd.equals(pwd)) {
					re=1;
				} else {
					re=0;
				}
			}else {
				re=-1;
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return re;
	}
	
	public MemberBean getMember(String id) throws Exception{
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select * from MEMBERT where mem_uid=?";
		MemberBean member=null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				member = new MemberBean();
				member.setMem_uid(rs.getString("mem_uid"));
				member.setMem_pwd(rs.getString("mem_pwd"));
				member.setMem_name(rs.getString("mem_name"));
				member.setMem_email(rs.getString("mem_email"));
				member.setMem_regdate(rs.getTimestamp("mem_regdate"));
				member.setMem_address(rs.getString("mem_address"));
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return member;
	}
	
	public int updateMember(MemberBean member) throws Exception{
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="update membert set mem_pwd=?, mem_email=?, mem_address=? where mem_uid=?";
		int re=-1;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			System.out.println("getMem_pwd===>"+member.getMem_pwd());
			System.out.println("getMem_email===>"+member.getMem_email());
			System.out.println("getMem_address===>"+member.getMem_address());
			System.out.println("getMem_uid===>"+member.getMem_uid());
			
			pstmt.setString(1, member.getMem_pwd());
			pstmt.setString(2, member.getMem_email());
			pstmt.setString(3, member.getMem_address());
			pstmt.setString(4, member.getMem_uid());
			re = pstmt.executeUpdate();
			System.out.println("re===>"+re);
			
			pstmt.close();
			conn.close();
			//System.out.println("변경 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("변경 실패");
		}
		
		return re;
	}
}















