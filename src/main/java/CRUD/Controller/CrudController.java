package CRUD.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import CRUD.dao.CrudDao;
import CRUD.dto.Employee;

@Controller
public class CrudController {

	@Autowired
	CrudDao dao;

	@GetMapping("/")
	public String loadHome() {
		return "home";
	}

	@GetMapping("/add")
	public String loadAdd() {
		return "add";
	}

	@PostMapping("/add")
	public String add(Employee employee, ModelMap map) {
		dao.saveEmployee(employee);
		map.put("msg", "Data Added Succesfully");
		return "home";
	}

	@GetMapping("/fetch")
	public String fetchAll(ModelMap map) {

		List<Employee> list = dao.fetchAllEmployee();
		if (list.isEmpty()) {
			map.put("msg", "No Data Found");
			return "home";
		} else {
			map.put("list", list);
			return "fetch";
		}

	}
	
	
	@GetMapping("/edit")
	public String edit(@RequestParam int id, ModelMap map) {
		Employee employee=dao.findById(id);
		map.put("employee", employee);
		return "update";
	}
	
	@PostMapping("/update")
		public String update(Employee employee, ModelMap map) {
			dao.updateEmployee(employee);
			map.put("success", "Data Updated Sucesfully");
			return fetchAll(map);
		}
	

	@GetMapping("/delete")
	public String delete(int id, ModelMap map) {
		dao.delete(id);
		map.put("del", "Deleted Succesfuy");
		return fetchAll(map);
	}

}
