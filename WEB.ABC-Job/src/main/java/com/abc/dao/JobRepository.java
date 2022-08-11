package com.abc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.dto.Jobs;

public interface JobRepository extends JpaRepository <Jobs, Integer>{

	Jobs getByAuthor(String author);
	
}