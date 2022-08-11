package com.abc.service;

import java.util.List;

import com.abc.dto.AppliedJob;
import com.abc.dto.Jobs;
import com.abc.dto.Users;

public interface UserService {
	public  void AddUserDetails(Users usr);
	public List<Users> showAllUser();
	public Users showUser(String userNamee);
	public void deleteData(int userId);
	public Users SearchUser(int d);
	public Users viewProfile( String username);
	public String addJobs(Jobs job);
	public List<Jobs> showJobs();
	public void addAppliedUser(AppliedJob applyjob);
	}
