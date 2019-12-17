package coffeshop.com.controller.admin;

import coffeshop.com.DTO.request.area.Area;
import coffeshop.com.entity.Employee;
import coffeshop.com.entity.Role;
import coffeshop.com.reponsitory.EmployeeRepository;
import coffeshop.com.reponsitory.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin/employee")
public class PersonalController {

    @Autowired
    EmployeeRepository employeeRepository;

    @Autowired
    RoleRepository roleRepository;
    @GetMapping
    public String getHome(ModelMap modelMap,@RequestParam(name = "page", required = false, defaultValue = "0") Integer page){

        if(page != 0 ){
            page = page -1;
        }
        Sort sort = Sort.by("id").descending();
        Pageable pageable = PageRequest.of(page, 10, sort);
        Page<Employee> page1 = employeeRepository.getAllBy(pageable);
        int a = page1.getTotalPages();
        modelMap.addAttribute("count", a);

        List<Employee> employees = page1.getContent();
        modelMap.addAttribute("emp", employees);
        return "admin/employee";
    }

    @GetMapping("/edit/{id}")
    public String editEmployee(@PathVariable("id") Integer id, ModelMap modelMap){
        Employee employee = employeeRepository.findById(id).get();
        List<Role> roles = roleRepository.findAll();
        modelMap.addAttribute("roles", roles);
        modelMap.addAttribute("emp", employee);
        return "admin/content/employeeedit";
    }

    @GetMapping("/add")
    public String addEmployee(ModelMap modelMap){
        List<Role> roles = roleRepository.findAll();
        modelMap.addAttribute("roles", roles);
        return "admin/content/employeeadd";
    }



    @PostMapping("/add")
    public String addEmployee( @RequestParam("UserName") String userName, @RequestParam("PassWord") String PassWord,
                               @RequestParam("Name") String Name,@RequestParam("Email") String Email,
                               @RequestParam("Address") String Address,@RequestParam("Phone") String Phone,
                               @RequestParam("status") Boolean status,@RequestParam("idRole") Integer idRole){
        Employee employee = new Employee();
        List<Role> roles = new ArrayList<>();
        Role role = roleRepository.findById(idRole).get();
        roles.add(role);
        employee.setAddress(Address);
        employee.setEmail(Email);
        employee.setName(Name);
        employee.setRoles(roles);
        employee.setUserName(userName);
        employeeRepository.save(employee);

        return "redirect:/admin/employee";
    }

    @PostMapping("/edit/{id}")
    public String editEmployee(@PathVariable("id") Integer id, @RequestParam("UserName") String userName, @RequestParam("PassWord") String PassWord,
                               @RequestParam("Name") String Name,@RequestParam("Email") String Email,
                               @RequestParam("Address") String Address,@RequestParam("Phone") String Phone,
                               @RequestParam("status") Boolean status,@RequestParam("idRole") Integer idRole){
        Employee employee = employeeRepository.findById(id).get();
        employee.setAddress(Address);
        employee.setEmail(Email);
        employee.setName(Name);
        employee.setUserName(userName);
        List<Role> roles = new ArrayList<>();
        Role role = roleRepository.findById(idRole).get();
        roles.add(role);
        employee.setRoles(roles);
        employee.setPhone(Phone);
        employeeRepository.save(employee);
        return "redirect:/admin/employee";
    }

    @PostMapping("delete")
    public String deleteArea( Area area){
        try {
            employeeRepository.deleteById(area.getId());
        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/admin/employee";
    }
}
