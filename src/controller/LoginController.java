package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.AccountDao;

@Controller
public class LoginController {
	private AccountDao accountDao;

	@Autowired
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}

	@RequestMapping("/loginA")
	public String login(Model model, HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("username");
		String pass = request.getParameter("password");
//				Account user = accountDao.ifUser(username,false);
		if (accountDao.ifAdmin(username, pass, true)) {
			return "redirect:/admin/employeeList";
		}

		if (accountDao.ifUser(username, pass, false)) {
			return "redirect:/user/employeeList";
		} else {
			model.addAttribute("fail", "user name or password wrong !!");
			return "layouts/login";
		}

	}
	
	@RequestMapping("/logoutA")
	public String logout(Model model, HttpServletRequest request, HttpServletResponse response) {
			return "layouts/login";
	}
	

}
