package com.abc.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.abc.dao.EmailRepository;
import com.abc.dto.EmailSend;

@Service
public class EmailService {

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private EmailRepository emailrepo;

	public String sendEmail(EmailSend email) {
		try {
			SimpleMailMessage message = new SimpleMailMessage();

			List<String> emails_jobs = new ArrayList<String>();

			String[] job_email = email.getReciever_emails().split(",");

			emails_jobs = Arrays.asList(job_email);

			for (String mail_name : emails_jobs) {
				System.out.println("mail will work " + mail_name);

				message.setFrom("pallawi12.2002@gmail.com");
				message.setTo(mail_name);

				System.out.print(mail_name);

				message.setText(email.getContent());
				message.setSubject(email.getSubject());

				mailSender.send(message);

			}
			return "Email sent successfully";

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public void addEmail(EmailSend email) {
		emailrepo.save(email);
	}

}