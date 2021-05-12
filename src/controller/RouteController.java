package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.DepartmentDao;
import dao.EmployeeDAO;
import dao.JobDao;
import dao.MessageDao;
import entities.Department;
import entities.Employee;
import entities.Job;

@Controller
public class RouteController {
	private EmployeeDAO employeeDAO;
	private DepartmentDao departmentDao;
	private JobDao jobDao;
	private MessageDao messageDao;
	
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
	@RequestMapping("/admin/manage-employee")
	public ModelAndView getManageEmloyee(Model model, HttpServletRequest request){
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
		ModelAndView mv = new ModelAndView("admin/manageEmployee");
		return mv;
	}
	@RequestMapping("/admin/email")
	public ModelAndView getEmail(){
		ModelAndView mv = new ModelAndView("admin/sendEmail");
		return mv;
	}
	@RequestMapping("/admin/manage-department")
	public ModelAndView getManageDepartment(Model model, HttpServletRequest request){
		List department = departmentDao.getAllDepartment();
		model.addAttribute("listDepartment", department);	
		model.addAttribute("d", new Department());
		ModelAndView mv = new ModelAndView("admin/manageDepartment");
		return mv;
	}
	@RequestMapping("/admin/manage-job")
	public ModelAndView getManageJob(Model model, HttpServletRequest request){
		List job = jobDao.getAllJob();
		model.addAttribute("ListJob", job);	
		model.addAttribute("j", new Job());
		ModelAndView mv = new ModelAndView("admin/manageJob");
		return mv;
	}
	@RequestMapping("/admin/rating")
	public ModelAndView getRating(){
		ModelAndView mv = new ModelAndView("admin/rating");
		return mv;
	}
	@RequestMapping("/admin/report")
	public ModelAndView getReport(){
		ModelAndView mv = new ModelAndView("admin/report");
		return mv;
	}

}
