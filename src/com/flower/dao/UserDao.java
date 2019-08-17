package com.flower.dao;

import java.util.List;

import com.flower.entity.User;

public interface UserDao {
	public int addUser(User user);
	public int updateUser(User user);
	public int deleteUser(String userid);
	public User findByIdUser(String userid);
	public List<User> findAllUser();
	public User login(String userid, String password);

}
