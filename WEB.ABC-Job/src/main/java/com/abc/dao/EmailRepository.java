package com.abc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.dto.EmailSend;
public interface EmailRepository extends JpaRepository <EmailSend, Integer>{

}
