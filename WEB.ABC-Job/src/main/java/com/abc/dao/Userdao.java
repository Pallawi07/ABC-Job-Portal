package com.abc.dao;

import org.apache.catalina.User;
import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.dto.Users;

public interface Userdao extends JpaRepository<Users,Integer> {
	//@Query(value= "Select * FROM user_details WHERE role = 'ADMIN' ",nativeQuery = true)
	Users findByUserName(String name);

	Users getUserByUserName(String userName);

	User save(User user);
}
