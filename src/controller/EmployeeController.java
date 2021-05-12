package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.AccountDao;
import dao.DepartmentDao;
import dao.DepartmentDaoImpl;
import dao.EmployeeDAO;
import dao.JobDao;
import dao.MessageDao;
import entities.Department;
import entities.Employee;
import entities.Job;
import entities.Test;

@Controller
public class EmployeeController {
	private EmployeeDAO employeeDAO;
	private DepartmentDao departmentDao;
	private JobDao jobDao;
	private MessageDao messageDao;
	private AccountDao accountDao;
	
	@Autowired
	public void setEmployeeDAO(EmployeeDAO employeeDAO) {
		this.employeeDAO = employeeDAO;
	}
	@Autowired
	public void setDepartmentDAO(DepartmentDao departmentDao) {
		this.departmentDao = departmentDao;
	}
	@Autowired
	public void setJobDao(JobDao jobDao) {
		this.jobDao = jobDao;
	}
	@Autowired
	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}
	@Autowired
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}
	
	//controller
	@RequestMapping(value = {"/","/admin/employeeList"})
	public String listEmployee(Model model, HttpServletRequest request, @RequestParam(required=false,name="message")String message) {
		List list = employeeDAO.getAllEmployee();
		model.addAttribute("list", list);	
		model.addAttribute("e", new Employee());
		
		List department = departmentDao.getAllDepartment();
		model.addAttribute("listDepartment", department);	
		model.addAttribute("d", new Department());
		
		List job = jobDao.getAllJob();
		model.addAttribute("ListJob", job);	
		model.addAttribute("j", new Job());
		
//		List a = applyDao.displayRequest();
//		model.addAttribute("apply", a);	
		int totalEmployee = employeeDAO.getAllEmployee().size();
		model.addAttribute("total",totalEmployee);
		int messageNumber = messageDao.loadMess().size();
		model.addAttribute("numberOfMessage",messageNumber);
		
		model.addAttribute("message",message);

		return "admin/manageEmployee"; // admin.jsp
	}
	
	
	
	@RequestMapping(value = {"/user/employeeList"})
	public String listEmployeeForUser(Model model, HttpServletRequest request, @RequestParam(required=false,name="message")String message) {
		List list = employeeDAO.getAllEmployee();
		model.addAttribute("list", list);	
		model.addAttribute("e", new Employee());
		

		
		List job = jobDao.getAllJob();
		model.addAttribute("ListJob", job);	
		model.addAttribute("j", new Job());
		

		int totalEmployee = employeeDAO.getAllEmployee().size();
		model.addAttribute("total",totalEmployee);
		int messageNumber = messageDao.loadMess().size();
		model.addAttribute("numberOfMessage",messageNumber);
		
		model.addAttribute("message",message);

		return "user/EmployeeList"; // admin.jsp
	}
	
		@RequestMapping("/admin/detailOfEmployee")
	public String detailStudent(@RequestParam("id")Integer id, Model model) {
		Employee e = employeeDAO.getEmployeeById(id);
		model.addAttribute("e",e);
		return "admin/detailsEmployee"; //  dtail.jsp
	}
		
		@RequestMapping("/admin/insertE")
		public String insertStudent(@ModelAttribute("e")Employee e, Model model) {
			boolean bl = employeeDAO.insertEmployee(e);
			if(bl) {
				return "redirect:/admin/employeeList?message=Insert successfully!";
			}else {
				model.addAttribute("error", "Insert failed!");
				model.addAttribute("add", e);
				return "admin/manageEmployee";
			}
		}
		
		
		
		@RequestMapping("/admin/deleteEmployee")	// test lai
		public String deleteStudent(@RequestParam("id")Integer id, Model model) {
			boolean bl = employeeDAO.delete(id);
			String mess = "";
			if(bl) {
				mess = "Delete successfully!";
			}else {
				mess = "Delete failed!";
			}
			return "redirect"; // return admin.jsp
		}
		
		// update process
		@RequestMapping("/admin/initUpdate") 
		public String initUpdateStudent(@RequestParam("id")Integer id, Model model) {
			Employee e = employeeDAO.getEmployeeById(id);
			model.addAttribute("e", e);
			return "admin/editEmployee"; // update.jsp
		}

		@RequestMapping("/admin/update")
		public String updatEmployee(@ModelAttribute("e")Employee e,Model model) {
			boolean bl = employeeDAO.update(e);
			if(bl) {
				return "redirect:/admin/employeeList?message=Update successfully!";
			}else {
				model.addAttribute("error", "Update failed!");
				model.addAttribute("e", e);
				return "admin/editEmployee";
			}
		}
		
		
		@RequestMapping("/admin/search")
		public String search(Model model ,HttpServletRequest request, HttpServletResponse response) {
		    String id = request.getParameter("sId");
		    
		    try {
		    int sid = Integer.parseInt(id);
		    
			Employee e = employeeDAO.getEmployeeById(sid);
			model.addAttribute("e",e);
			return "admin/detailsEmployee"; //  dtail.jsp
		    }catch(Exception ex) {
				return "redirect:/admin/employeeList?message=Cannot found anybody!";

		    }
		}
		
}
