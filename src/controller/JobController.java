package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.DepartmentDao;
import dao.JobDao;
import entities.Department;
import entities.Employee;
import entities.Job;

@Controller
public class JobController {
	private JobDao jobDao;
	private DepartmentDao departmentDao;
	@Autowired
	public void setJobDao(JobDao jobDao) {
		this.jobDao = jobDao;
	}
	@Autowired
	public void setDepartmentDao(DepartmentDao departmentDao) {
		this.departmentDao = departmentDao;
	}
	
	@RequestMapping(value = {"/","/admin/loadJob"})
	public String loadJob(Model model, HttpServletRequest request) {		
		List job = jobDao.getAllJob();
		model.addAttribute("ListJob", job);	
		model.addAttribute("j", new Job());
		List department = departmentDao.getAllDepartment();
		model.addAttribute("listDepartment", department);	
		model.addAttribute("d", new Department());
		
		return "admin/manageJob";		
	}
	
	@RequestMapping("/admin/jobDescription")
	public String jobDescription(@RequestParam("job_Id")String job_Id, Model model) {
		Job j = jobDao.getDecribetion(job_Id);
		model.addAttribute("j",j);
		return "admin/detailsJob"; //  dtail.jsp
	}
	
	@RequestMapping("/admin/insertJob")
	public String addJob(@ModelAttribute("j")Job j, Model model) {
		boolean bl =jobDao.addJob(j);
		if(bl) {
			return "redirect:/admin/loadJob?message=Insert successfully!";
		}else {
			model.addAttribute("error", "Insert failed!");
			model.addAttribute("add", j);
			return "admin/manageJob";
		}
	}
	@RequestMapping("/admin/initUpdateJob")
	public String initUpdateStudent(@RequestParam("job_Id")String job_Id, Model model) {
		Job j = jobDao.getDecribetion(job_Id);
		model.addAttribute("j", j);
		return "admin/editJob"; 
	}
	@RequestMapping("/admin/updateJob")
	public String updateStudent(@ModelAttribute("j")Job j, Model model) {
		boolean bl = jobDao.updateJob(j);
		if(bl) {
			return "redirect:/admin/loadJob?message=Update successfully!";
		}else {
			model.addAttribute("error", "Update failed!");
			model.addAttribute("j", j);
			return "admin/editJob";
		}
	}
}
