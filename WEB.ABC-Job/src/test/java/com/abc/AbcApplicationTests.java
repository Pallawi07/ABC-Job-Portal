package com.abc;

import static org.assertj.core.api.Assertions.assertThat;

import org.apache.catalina.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;

import com.abc.dao.Userdao;
import com.abc.dto.Users;
import com.abc.service.UserService;

@SpringBootTest
class AbcApplicationTests {
	
	@Autowired
	Userdao repo;
	@Autowired
	UserService UserService;
	
//	@Test
//	void searchByUsername() {
//		Users actualResult = repo.findByUserName("Naruto");
//		assertThat(actualResult).isNotNull();
//	}
	
	@Test
	void addUser() {
		Users user= new Users();
		user.setUserid(8);
		user.setEmail("Dustin.2@gmail.com");
		user.setFirst_name("Dustin");
		user.setLast_name("Handerson");
		user.setPassword("STuser");
		user.setPhone("9876677189");
		user.setUserName("Dustin.H");
		user.setRole("USER");
		UserService.AddUserDetails(user);
		System.out.println(user);
			
	}
		
}
