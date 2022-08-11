package com.abc.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.abc.dao.AppliedJobRepository;
import com.abc.dao.JobRepository;
import com.abc.dao.Userdao;
import com.abc.dto.AppliedJob;
import com.abc.dto.Jobs;
import com.abc.dto.Users;

@Service("userService")
public class UserServiceImpl implements UserService {
	private PasswordEncoder passwordencoder;
	@Autowired
	Userdao Udao;
	Users user;

	@Autowired
	AppliedJobRepository applyrepo;

	List<Users> userDetails = new ArrayList<Users>();

	@Autowired
	private JobRepository jobrepo;

	@Override
	public void addAppliedUser(AppliedJob applyjob) {
		// TODO Auto-generated method stub
		applyrepo.save(applyjob);
	}

	@Override
	public void AddUserDetails(Users us) {
		// TODO Auto-generated method stub
		us.setRole("USER");
		us.setPassword(passwordencoder.encode(us.getPassword()));
		Udao.save(us);
	}

	@Autowired
	public UserServiceImpl(PasswordEncoder encoder) {
		// TODO Auto-generated constructor stub
		this.passwordencoder = encoder;
	}


	@Override
	public List<Users> showAllUser() {
		List<Users> database = Udao.findAll();
		return database;
	}

	@Override
	public void deleteData(int id) {
		Udao.deleteById(id);
	}

	@Override
	public Users SearchUser(int id) {

		Optional<Users> myData = Udao.findById(id);
		Users p = myData.get();
		return p;

	}

	@Override
	public Users showUser(String name) {
		// TODO Auto-generated method stub
		user = Udao.findByUserName(name);

		return user;
	}

	@Override
	public Users viewProfile(String username) {
		// TODO Auto-generated method stub
		Users usr = Udao.findByUserName(username);

		return usr;
	}

	@Override
	public String addJobs(Jobs job) {
		jobrepo.save(job);
		return "Job Added";
	}

	@Override
	public List<Jobs> showJobs() {
		List<Jobs> jobList = jobrepo.findAll();
		return jobList;
	}

	public List<Users> getByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Users> getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}
}
