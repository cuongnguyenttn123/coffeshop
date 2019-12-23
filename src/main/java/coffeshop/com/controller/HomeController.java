package coffeshop.com.controller;

import coffeshop.com.entity.*;
import coffeshop.com.reponsitory.AreaRepository;
import coffeshop.com.reponsitory.FoodRepository;
import coffeshop.com.reponsitory.FoodcategaryRepository;
import coffeshop.com.reponsitory.TablefoodRepository;
import coffeshop.com.service.BillService;
import coffeshop.com.service.impl.EmployeeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {
    @Autowired
    EmployeeServiceImpl employeeService;

    @Autowired
    FoodRepository foodRepository;

    @Autowired
    BillService billService;

    @Autowired
    FoodcategaryRepository foodcategaryRepository;

    @Autowired
    AreaRepository areaRepository;

    @Autowired
    TablefoodRepository tablefoodRepository;

    @GetMapping("/sell")
    public String getHome(ModelMap modelMap){
        List<Foodcategory> foodcategoryList = foodcategaryRepository.findAll();
        List<Area> areaList = areaRepository.findAll();
        List<Tablefood> tableNull = tablefoodRepository.getTablefoodByIdBill(0);
        modelMap.addAttribute("tableNull", tableNull);
        modelMap.addAttribute("cate", foodcategoryList);
        modelMap.addAttribute("area", areaList);
        return "client/home";

    }

}
