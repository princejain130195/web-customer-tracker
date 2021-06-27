package com.luv2code.springdemo.Controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.luv2code.spring.entity.Customer;
import com.luv2code.springdemo.DAO.CustomerDAO;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerDAO customerDAO; 
	
	@RequestMapping("/list")
	public String listCustomer(Model model) {
		
		List<Customer> customerList = customerDAO.getCustomers();
		
		model.addAttribute("customers", customerList);
		
		return "list-customers";
	}
	

}
