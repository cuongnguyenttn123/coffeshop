package coffeshop.com.controller;

import coffeshop.com.entity.Employee;
import coffeshop.com.entity.Food;
import coffeshop.com.reponsitory.FoodRepository;
import coffeshop.com.service.EmployeeService;
import coffeshop.com.service.impl.EmployeeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/home")
public class HomeController {
    @Autowired
    EmployeeServiceImpl employeeService;

    @Autowired
    FoodRepository foodRepository;

    @GetMapping()
    public String getHome(){
        List<Employee> employees =  employeeService.findAll();
        List<Food> foods = foodRepository.findAll();
        return "home";
    }
}
