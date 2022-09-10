package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.struct.*;


@Controller
public class HomeController {

	Registerpage r= new Registerpage();

	@Autowired
	CustomerDao cd;

//	@RequestMapping("/")
//	public String index()
//	{
//		return "index";
//	}
	
	@RequestMapping("/")
	public String login()
	{
		return "banklogin";
	}
	
	@RequestMapping("/logout")
	public String logout()
	{
		return "banklogin";
	}
	
	@RequestMapping("/bmenu")
	public String bmenu()
	{
		return "BankMenu";
	}
		
	@RequestMapping(path="/registercust",method = RequestMethod.POST)
	public String register(HttpServletRequest request)
	{

		Registerpage ra= new Registerpage();
		int id = 0;
		String name = request.getParameter("cname");
		String email = request.getParameter("cemail");
		int bal = Integer.parseInt(request.getParameter("op"));
		ra.setId(id);
		ra.setName(name);
		ra.setEmail(email);
		ra.setOp(bal);
		
		System.out.println(ra.getOp());
		int i = cd.insert(ra);
		System.out.println(i);
		if(i>0){
			
			return "error";	
		}
		return "BankMenu";
	}
	
	@RequestMapping(path="/blogin",method = RequestMethod.POST)
	public String blogin(HttpServletRequest request)
	{
		String email = request.getParameter("bemail");
		String pass = request.getParameter("password");
		if(email.equals("banklogin@gmail.com") && pass.equals("bank"))
			return "BankMenu";
		else
			return "error";
	}
	
	@RequestMapping("/deposit")
	public String deposit()
	{
		
		return "MoneyDep";
	}
	
	@RequestMapping(path="/mdeposit",method = RequestMethod.POST)
	public String mdeposit(Model m,HttpServletRequest request)
	{
		
				int reciever = Integer.parseInt(request.getParameter("ac1")); 
				int amount1 = Integer.parseInt(request.getParameter("amount"));
				if(amount1>0){
				r = cd.getRegisterpage(reciever);
				r.setOp(amount1+r.getOp());
				}
				boolean res = cd.updateRegisterpage(r);
				if(res)
					return "bmenu";
				else
					return "MoneyDep";
	}	
	
	@RequestMapping("/withdraw")
	public String withdraw()
	{
		return "MoneyWithdraw";
	}
	@RequestMapping("/register")
	public String register()
	{
		return "Register";
	}
}
