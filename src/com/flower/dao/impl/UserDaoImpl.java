package com.flower.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.flower.dao.UserDao;
import com.flower.entity.User;
import com.flower.urils.BaseDao;

public class UserDaoImpl extends BaseDao implements UserDao{
private Connection con;
private PreparedStatement psmt;
private ResultSet rs;
	public int addUser(User user) {
		String sql="insert into users values(?,?,?,?,?,?,?)";
		Object obj[]={
				user.getUserid(),
				user.getUsername(),
				user.getPassword(),
				user.getSex(),
				user.getBirthday(),
				user.getTel(),
				user.getType()
		};
		return this.executeSql(sql, obj);
	}

	public int updateUser(User user) {
		String sql="update users set username=?,password=?,sex=?,birthday=?,tel=? where userid=?";
		Object obj[]={
				user.getUsername(),
				user.getPassword(),
				user.getSex(),
				user.getBirthday(),
				user.getTel(),
				user.getUserid()
		};
		return this.executeSql(sql, obj);
	}

	public int deleteUser(String userid) {
		String sql="delete from users where userid=?";
		Object obj[]={
			userid	
		};
		return this.executeSql(sql, obj);
	}

	public User findByIdUser(String userid) {
		User user=null;
		con=this.getCon();
		try {
		String sql="select * from users where userid=?";
		psmt=con.prepareStatement(sql);
		psmt.setString(1, userid);
		rs=psmt.executeQuery();
		if(rs.next())
		{
			user=new User();
			getRs(user,rs);
		}
		} catch (Exception e) {
			// TODO: handle exception
		}finally
		{
			this.closeCon(rs, psmt, con);
		}
		return user;
	}

	public List<User> findAllUser() {
		List<User> list=new ArrayList<User>();
		con=this.getCon();
		try {
		String sql="select * from users";
		psmt=con.prepareStatement(sql);
		rs=psmt.executeQuery();
		while(rs.next())
		{
			User user=new User();
			getRs(user,rs);
			list.add(user);
		}
		} catch (Exception e) {
			// TODO: handle exception
		}finally
		{
			this.closeCon(rs, psmt, con);
		}
		return list;
	}

	public User login(String userid, String password) {
		User user=null;
		con=this.getCon();
		try {
		String sql="select * from users where userid=? and password=?";
		psmt=con.prepareStatement(sql);
		psmt.setString(1, userid);
		psmt.setString(2, password);
		rs=psmt.executeQuery();
		if(rs.next())
		{
			user=new User();
			getRs(user,rs);
		}
		} catch (Exception e) {
			// TODO: handle exception
		}finally
		{
			this.closeCon(rs, psmt, con);
		}
		return user;
	}

	public void getRs(User user,ResultSet rs) throws SQLException
	{
		user.setUserid(rs.getString("userid"));
		user.setUsername(rs.getString("username"));
		user.setPassword(rs.getString("password"));
		user.setSex(rs.getInt("sex"));
		user.setBirthday(rs.getString("birthday"));
		user.setTel(rs.getString("tel"));
		user.setType(rs.getInt("type"));
		
	}
	
	
}

