package com.abc.Abc.service;

import java.util.List;

import com.abc.Abc.dto.Users;

public interface UserService {
	public void AddUserDetails(Users usr);
	public List<Users> showAllUser();
	public Users showUser(String userNamee);
	public void deleteData(int userId);
	public Users SearchUser(int d);
	
	
	}
