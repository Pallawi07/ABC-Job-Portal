package com.abc.Abc.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.abc.Abc.dao.Userdao;
import com.abc.Abc.dto.Users;

@Service("userService")
public class UserServiceImpl implements UserService {
	private PasswordEncoder passwordencoder;
	@Autowired
	Userdao Udao;
	Users user;
	
	
	
	
	List<Users> userDetails = new ArrayList<Users>();
	
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
		this.passwordencoder=encoder;
	}
	
	

	@Override
	public List<Users> showAllUser() {
		List<Users> database = Udao.findAll();
		return database;
	}
	
//	@Override
//	public Users showUser(String userName) {
//		for(Users usr : userDetails) {
//			if(usr.getUserName().equals(userName)){
//				System.out.println(usr);
//				return usr;
//			}
//		}
//		return null;
//	}
	
	@Override
	public void deleteData(int id) {
		Udao.deleteById(id);
	}
	
	@Override
	public Users SearchUser(int id) {
		
		Optional<Users> myData=Udao.findById(id);
Users p=myData.get();
		return p;
		
		
	}
	
	@Override
    public Users showUser(String name ) {
        // TODO Auto-generated method stub
        user = Udao.findByUserName(name);
//        User M=user.();
        
        return user;

}
}
