package com.abc.Abc.controller;


import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abc.Abc.dto.Users;
import com.abc.Abc.service.UserService;

@Controller
public class AbcController {
	@Autowired
	UserService userService;
	List<Users> userDetailzzz = new ArrayList<Users>();
	Users user;
	
	@GetMapping( value ="/")
	public String home() {
		return "Home";
	}
	
	@GetMapping( value ="/manage")
	public String manage() {
		return "manage";
	}
	
	@GetMapping( value ="/Add")
	public String add(@ModelAttribute("data") Users usr ) {
		return "Add";
	}
	
	@PostMapping( value ="/AddUser")
	public String addUser(@ModelAttribute("data") Users usr) {
		userService.AddUserDetails(usr);
		System.out.println(usr);
		return "redirect:/thankyou";
	}
	@GetMapping(value ="/show")
	public ModelAndView showUser() {
		 List<Users> userDetailzzz = userService.showAllUser();
		System.out.println(userDetailzzz);
		return new ModelAndView("showww","testv",userDetailzzz);
	}
	
	@GetMapping( value ="/thankyou")
	public String thankyou() {
		return "thankYou";
	}
	
	//@GetMapping(value ="/search")
	//public String searchUser(@ModelAttribute("searchd") Users userName)
	//{
	//	return "ShowUser";
	//}
	
	//@PostMapping(value = "/sear")
	//public ModelAndView Searchlearner(@ModelAttribute("searchd") Users userName)
	//{
	//	String searchname = userName.getUserName();
	//	List<Users> U = new ArrayList<Users>();
	//	Users uu = userService.showUser(searchname);
	//	U.add(uu);
	//	return new ModelAndView("SearchResult","arves",U);
		
		
		
		
	//}
	
	@GetMapping(value="/search")
    public String membersearch(@ModelAttribute("searchd") Users userId) {
        
        return "SearchUser";
    }
    
    @PostMapping(value = "/sear")
    public ModelAndView membesearch(@ModelAttribute("searchd") Users username) {
    	String searchname = username.getUserName();
        Users mm = userService.showUser(searchname);
        
        System.out.println(mm);
        
        return new ModelAndView("SearchResult","arves",mm);
//      return "SearchResultMember";
    }
	
	@GetMapping(value ="/deleteUser")
	public String del()
	{
		return "DelUser";
		
	}	
	
	
	@GetMapping(value ="/delete/{searchid}")
	public String DeleteUser(@PathVariable("searchid") Integer userId)
	{
		userService.deleteData(userId);
		return "redirect:/show";
	}
	
	@GetMapping( value ="/User")
	public String HomeUser() {
		return "Home(User)";
	}
	
	@GetMapping( value ="/contact")
	public String ContactUs() {
		return "Contact";
	}
	
	@GetMapping( value ="/admin")
	public String HomeAdmin() {
		return "Home(Admin)";
	}
	
	@GetMapping(value = "/update/{searchid}")
	public ModelAndView updatePage(@PathVariable("searchid") Integer id) {
		
		Users p = userService.SearchUser(id);
		System.out.println(p);
		return new ModelAndView("UpdateProfile","searchView",p);
		
		
	}
	
	
	@GetMapping(value = "/update/dataupdate")
	public String updateData
	
	(@RequestParam("userid") int id,
			@RequestParam("userName") String name,
			@RequestParam("password") String pass,
			@RequestParam("first_name") String Fname,
			@RequestParam("last_name") String Lname,
			@RequestParam("Country") String Country,
			@RequestParam("email") String eeemail,
			@RequestParam("phone") long phn
			
			
	) {
		
		System.out.println(id + name +pass +Fname +Lname +Country +eeemail +phn);
		
		Users  user = new Users( id,  name, pass, Fname, Lname, Country,eeemail, phn,null);
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
	
	
	@GetMapping( value ="/test")
	public String Hoss() {
		return "showww";
	}
	
	
	
	
}
