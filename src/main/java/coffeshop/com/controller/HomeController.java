package coffeshop.com.controller;

import coffeshop.com.DTO.reponse.AreaReponseDto;
import coffeshop.com.DTO.reponse.FoodCategoryReponseDto;
import coffeshop.com.DTO.reponse.TableFoodReponseDto;
import coffeshop.com.entity.*;
import coffeshop.com.reponsitory.AreaRepository;
import coffeshop.com.reponsitory.FoodRepository;
import coffeshop.com.reponsitory.FoodcategaryRepository;
import coffeshop.com.reponsitory.TablefoodRepository;
import coffeshop.com.service.AreaService;
import coffeshop.com.service.BillService;
import coffeshop.com.service.FoodcategoryService;
import coffeshop.com.service.TableFoodService;
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
    FoodcategoryService foodcategoryService;

    @Autowired
    AreaService areaService;

    @Autowired
    TableFoodService tableFoodService;

    @GetMapping("/sell")
    public String getHome(ModelMap modelMap){
        List<FoodCategoryReponseDto> foodcategoryList = foodcategoryService.findAll();
        List<AreaReponseDto> areaList = areaService.findByAll();
        List<TableFoodReponseDto> tableNull = tableFoodService.getTablefoodByIdBill(0);
        modelMap.addAttribute("tableNull", tableNull);
        modelMap.addAttribute("cate", foodcategoryList);
        modelMap.addAttribute("area", areaList);
        return "client/home";

    }

}
