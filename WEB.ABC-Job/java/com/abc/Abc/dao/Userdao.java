package com.abc.Abc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import com.abc.Abc.dto.Users;

public interface Userdao extends JpaRepository<Users,Integer> {
	//@Query( value= "Select * FROM user_details WHERE role = 'ADMIN' ",nativeQuery = true)
	Users findByUserName(String name);

}
