package com.flower.urils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BaseDao {
    private String driver="com.mysql.cj.jdbc.Driver";
    private String url="jdbc:mysql://localhost:3306/flower";
    private String user="root";
    private String pwd="12345678";
	Connection con;
	public Connection getCon()
	{
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return  con;
	}
	public void closeCon(ResultSet rs,PreparedStatement psmt,Connection con)
	{
		try {
			if(rs!=null)
			{
				rs.close();
			}
			if(psmt!=null)
			{
				psmt.close();
			}
			if(con!=null){
				con.close();
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	//���£�insert,update,delete����ͨ�÷���
	public int executeSql(String sql,Object obj[])
    {
		con=this.getCon();
		int num=0;
		PreparedStatement psmt=null;
		try {
		psmt=con.prepareStatement(sql);
		for(int i=0;i<obj.length;i++)
		{
			psmt.setObject(i+1, obj[i]);
		}
		num=psmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}finally
		{
			this.closeCon(null, psmt, con);
		}
		
		return num;
		
    }
//  public static void main(String[] args) {
//	System.out.println(new BaseDao().getCon());
//}
	
}
