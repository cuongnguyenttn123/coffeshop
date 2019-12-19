package coffeshop.com.controller.admin;

import coffeshop.com.entity.Employee;
import coffeshop.com.reponsitory.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
@RequestMapping("/admin/generality")
public class GeneralityController {

    @Autowired
    EmployeeRepository employeeRepository;
    @GetMapping
    public String getHome(ModelMap modelMap, Principal principal){
        Employee employee = employeeRepository.findByUserName(principal.getName());

        modelMap.addAttribute("emp", employee);
        return "admin/generality";
    }
}
