package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.DepartmentDao;
import entities.Department;
import entities.Employee;

@Controller
public class DepartmentController {
	private DepartmentDao departmentDao;
	@Autowired
	public void setDepartmentDao(DepartmentDao departmentDao) {
		this.departmentDao = departmentDao;
	}
	@RequestMapping(value = {"/","/admin/loadDepartment"})
	public String loadDepartment(Model model, HttpServletRequest request, @RequestParam(required=false,name="message")String message) {
		List department = departmentDao.getAllDepartment();
		model.addAttribute("listDepartment", department);	
		model.addAttribute("d", new Department());
		model.addAttribute("message",message);

		return "admin/manageDepartment";
	}
	@RequestMapping("/admin/insertDepartment")
	public String insertDepartment(@ModelAttribute("d")Department d, Model model) {
		boolean bl = departmentDao.addDepartment(d);
		if(bl) {
			return "redirect:/admin/loadDepartment?message=Insert successfully!";
		}else {
			model.addAttribute("error", "Insert failed!");
			model.addAttribute("add", d);
			return "admin/manageDepartment";
		}
	}
	
	
	@RequestMapping("/admin/initUpdateDepartment")
	public String initUpdateStudent(@RequestParam("department_Id")String department_Id, Model model) {
		Department d = departmentDao.getDepartmentId(department_Id);
		model.addAttribute("d", d);
		return "admin/editDepartment"; 
	}

	@RequestMapping("/admin/updateDepartment")
	public String updateStudent(@ModelAttribute("d")Department d ,Model model) {
		boolean bl = departmentDao.updateDepartment(d);
		if(bl) {
			return "redirect:/admin/loadDepartment?message=Update successfully!";
		}else {
			model.addAttribute("error", "Update failed!");
			model.addAttribute("d", d);
			return "admin/editDepartment";
		}
	}
}
