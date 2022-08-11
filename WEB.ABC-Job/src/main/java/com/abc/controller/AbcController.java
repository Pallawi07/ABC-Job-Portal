package com.abc.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abc.dao.AppliedJobRepository;
import com.abc.dao.JobRepository;
import com.abc.dao.Userdao;
import com.abc.dto.AppliedJob;
import com.abc.dto.EmailSend;
import com.abc.dto.Jobs;
import com.abc.dto.Users;
import com.abc.service.EmailService;
import com.abc.service.UserService;

@Controller
public class AbcController {

	@Autowired
	EmailService emailservice;

	@Autowired
	JobRepository jobrepo;
	@Autowired
	AppliedJobRepository applyrepo;

		
	@Autowired
	Userdao userrepo;

	@Autowired
	UserService userService;
	List<Users> userDetailzzz = new ArrayList<Users>();
	Users user;

	@GetMapping(value = "/")
	public String home() {
		return "Homepage";
	}

	@GetMapping(value = "/Add")
	public String add(@ModelAttribute("data") Users usr) {
		return "Add";
	}

	@PostMapping(value = "/AddUser")
	public String addUser(@ModelAttribute("data") Users usr) {
		userService.AddUserDetails(usr);
		System.out.println(usr);
		return "RegistrationThankyou";
	}

	@GetMapping(value = "/show")
	public ModelAndView showUser() {
		List<Users> userDetailzzz = userService.showAllUser();
		System.out.println(userDetailzzz);
		return new ModelAndView("showww", "testv", userDetailzzz);
	}

	@GetMapping(value = "/thankyou")
	public String thankyou() {
		return "RegistrationThankyou";
	}

	@GetMapping(value = "/search")
	public String membersearch(@ModelAttribute("searchd") Users userId) {
		return "SearchUser";
	}

	@PostMapping(value = "/sear")
	public ModelAndView membesearch(@ModelAttribute("searchd") Users username) {
		String searchname = username.getUserName();
		Users mm = userService.showUser(searchname);
		System.out.println(mm);
		return new ModelAndView("SearchResult", "arves", mm);
	}

	@GetMapping(value = "/deleteUser")
	public String del() {
		return "DelUser";
	}

	@GetMapping(value = "/delete/{searchid}")
	public String DeleteUser(@PathVariable("searchid") Integer userId) {
		userService.deleteData(userId);
		return "redirect:/show";
	}

	@GetMapping(value = "/User")
	public String HomeUser() {
		return "UserProfile";
	}

	@GetMapping(value = "/contact")
	public String ContactUs() {
		return "Contact";
	}

	@GetMapping(value = "/admin")
	public String HomeAdmin() {
		return "AdminProfile";
	}

	@GetMapping(value = "/update/{searchid}")
	public ModelAndView updatePage(@PathVariable("searchid") Integer id) {
		Users p = userService.SearchUser(id);
		System.out.println(p);
		return new ModelAndView("UpdateProfile", "searchView", p);
	}

	@GetMapping(value = "/update/dataupdate")
	public String updateData

	(@RequestParam("userid") int id, @RequestParam("first_name") String Fname, @RequestParam("last_name") String Lname,
			@RequestParam("email") String eeemail, @RequestParam("userName") String name,
			@RequestParam("password") String pass, @RequestParam("phone") String phn) {

		System.out.println(id + Fname + Lname + eeemail + name + pass + phn);
		Users user = new Users(id, Fname, Lname, eeemail, name, pass, phn, null);
		userService.AddUserDetails(user);
		return "redirect:/show";
	}

	@GetMapping(value = "/register")
	public String myRegisterPage(@ModelAttribute("vajresh") Users us) {

		return "Add";
	}

	@PostMapping(value = "/myreg")
	public String addRegisterPage(@ModelAttribute("vajresh") Users us) {
		userService.AddUserDetails(us);
		return "redirect:/thankyou";
	}

	@GetMapping(value = "/login")
	public String loginpage() {
		return "Login";
	}

	@GetMapping(value = "/test")
	public String Hoss() {
		return "showww";
	}

	@GetMapping(value = "/profile")
	public ModelAndView profilePage(Model model, Principal principal) {
		final String currentUser = principal.getName();
		Users u = userService.viewProfile(currentUser);
		return new ModelAndView("Profile", "usr", u);
	}

	@GetMapping(value = "/profile/{searchid}")
	public ModelAndView viewProfile(Model model, Principal principal) {
		final String currentUser = principal.getName();
		Users u = userService.viewProfile(currentUser);
		return new ModelAndView("RESULTTTT", "usr", u);
	}

	@GetMapping(value = "/sendEmail")
	public String sendEmail(@ModelAttribute("emails") EmailSend email) {
		return "SendEmail";
	}

	@PostMapping(value = "/sendEmails")
	public String submitEmail(@Valid @ModelAttribute("emails") EmailSend email, BindingResult results) {

		String reciever_emails = email.getReciever_emails();
		String email_subject = email.getSubject();
		String content = email.getContent();

		if (results.hasErrors()) {
			return "SendEmail";
		} else {
			String status = emailservice.sendEmail(email);
			System.out.printf(reciever_emails + " " + email_subject + " " + content + "\n" + status);
			emailservice.addEmail(email);
			return "AdminProfile";
		}
	}

	@GetMapping(value = "/jobs")
	public String jobs() {
		return "Job";
	}

	@GetMapping(value = "/createjobs")
	public String createJobs(@ModelAttribute("jobData") Jobs job) {
		return "CreateJob";
	}

	@PostMapping(value = "/submitJob")
	public String saveJob(@Valid @ModelAttribute("jobData") Jobs job, BindingResult results) {
		if (results.hasErrors()) {
			return "CreateJob";
		} else {
			userService.addJobs(job);
			return "Thankyoujobs";
		}
	}

	@GetMapping(value = "/viewjobs")
	public ModelAndView viewJobs() {
		userService.showJobs();
		List<Jobs> showJobs = userService.showJobs();
		System.out.println("jobs are " + showJobs);
		return new ModelAndView("ViewJob", "showJobs", showJobs);
	}

	@GetMapping(value = "/viewjobsUser")
	public ModelAndView ViewJobsUser() {
		userService.showJobs();
		List<Jobs> showJobs = userService.showJobs();
		System.out.println("jobs are " + showJobs);
		return new ModelAndView("ViewJobsUser", "showJobs", showJobs);
	}

	@GetMapping(value = "/jobDetails/{job_Id}")
	public String ViewJobsDetails(@PathVariable int job_Id, ModelMap model) {
		Jobs job = jobrepo.getById(job_Id);
		String authorname = job.getAuthor();
		int id = job.getJob_Id();
		System.out.println("name of the job author is " + authorname + " id is " + id);
		System.out.println("jobs for user are " + job);
		model.addAttribute("job", job);
		return "ViewJobDetails";
	}

	@GetMapping(value = "/deletejob/{job_Id}")
	public String deleteJob(@PathVariable int job_Id, Principal principal, Model model) {
		jobrepo.deleteById(job_Id);
		System.out.println("The job id to be deleted is " + "another id" + job_Id);

		String userName = principal.getName();
		Users useer = userrepo.getUserByUserName(userName);
		System.out.println(useer);
		model.addAttribute("userName", useer);
		return "AdminProfile";
	}

	@GetMapping(value = "/jobDetailsUser/{job_Id}")
	public String ViewJobsDetailsUser(@PathVariable int job_Id, ModelMap model) {
		Jobs job = jobrepo.getById(job_Id);
		String authorname = job.getAuthor();
		int id = job.getJob_Id();
		System.out.println("name of the job author is " + authorname + " id is " + id);
		System.out.println("jobs for user are " + job);
		model.addAttribute("job", job);
		return "ViewJobDetailsUser";
	}

//	@RequestMapping(value = "/addjobseeker", method = RequestMethod.POST)
//	public String saveJobSeekers(AppliedJob apply, Principal princi, Jobs jobses) {
//
//		String name = princi.getName();
//		Users u = userdao.getUserByUserName(name);
//		System.out.println("User in the registered job are " + u);
//
//		int id = u.getUserid();
//		apply.setUserId(id);
//
//		int jond = jobses.getJob_Id();
//		apply.setJobId(jond);
//
//		System.out.println("the id of the logged in user is " + id + " job id is " + jond);
//		applyrepo.save(apply);
//		return "ThankyouappliedJob";
//	}

}
