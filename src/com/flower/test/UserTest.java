package com.flower.test;

import java.util.Iterator;
import java.util.List;

import com.flower.dao.UserDao;
import com.flower.dao.impl.UserDaoImpl;
import com.flower.entity.User;

public class UserTest {
	public static void main(String[] args) {
		UserDao ud=new UserDaoImpl();
		User user=new User();
		user.setUserid("1002");
		user.setUsername("������");
		user.setPassword("22");
		user.setSex(0);
		user.setBirthday("1990-9-9");
		user.setTel("18966606788");
		user.setType(1);
//		ud.addUser(user);
//		ud.updateUser(user);
//		ud.deleteUser("1002");
//		User user=ud.findByIdUser("admin");
//		System.out.println(user.getUsername());
		
//		List<User> list=ud.findAllUser();
//		Iterator<User> it=list.iterator();
//		while(it.hasNext())
//		{
//			System.out.println(it.next());
//		}
		
//		User user=ud.login("admin", "admin");
//		if(user!=null)
//		{
//		System.out.println(user);
//		}
	}

}
