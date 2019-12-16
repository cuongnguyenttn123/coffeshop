package coffeshop.com.controller.admin;

import coffeshop.com.entity.Dvt;
import coffeshop.com.entity.Food;
import coffeshop.com.entity.Foodcategory;
import coffeshop.com.reponsitory.DvtRepository;
import coffeshop.com.reponsitory.FoodRepository;
import coffeshop.com.reponsitory.FoodcategaryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    DvtRepository dvtRepository;

    @Autowired
    FoodcategaryRepository foodcategaryRepository;

    @Autowired
    FoodRepository foodRepository;
    @GetMapping("home")
    public String getHome(){
        return "admin/employee/home";
    }

    @GetMapping("food")
    public String getFood(ModelMap modelMap, @RequestParam(name = "page", required = false, defaultValue = "0") Integer page){
        if(page != 0 ){
            page = page -1;
        }
        Sort sort = Sort.by("id").descending();
        Pageable pageable = PageRequest.of(page, 10, sort);
        Page<Food> page1 = foodRepository.getAllBy(pageable);
        int a = page1.getTotalPages();
        modelMap.addAttribute("count", a);


        List<Food> foods = page1.getContent();
        List<Foodcategory> foodcategories = foodcategaryRepository.findAll();
        List<Dvt> dvts = dvtRepository.findAll();
        modelMap.addAttribute("dvts", dvts);
        modelMap.addAttribute("foods", foods);
        modelMap.addAttribute("foodcategories", foodcategories);
        return "admin/employee/food";
    }
    @GetMapping("category")
    public String getCategory(ModelMap modelMap,@RequestParam(name = "page", required = false, defaultValue = "0") Integer page){
        if(page != 0 ){
            page = page -1;
        }
        Sort sort = Sort.by("id").descending();
        Pageable pageable = PageRequest.of(page, 10, sort);
        Page<Foodcategory> page1 = foodcategaryRepository.getAllBy(pageable);
        int a = page1.getTotalPages();
        modelMap.addAttribute("count", a);
        List<Foodcategory> foodcategories = page1.getContent();
        modelMap.addAttribute(("foodcategories"), foodcategories);
        return "admin/employee/category";
    }

    @GetMapping("dvt")
    public String getHome(ModelMap modelMap,@RequestParam(name = "page", required = false, defaultValue = "0") Integer page){
        if(page != 0 ){
            page = page -1;
        }
        Sort sort = Sort.by("id").descending();
        Pageable pageable = PageRequest.of(page, 10, sort);
        Page<Dvt> page1 = dvtRepository.getAllBy(pageable);
        int a = page1.getTotalPages();
        modelMap.addAttribute("count", a);
        List<Dvt> dvts = page1.getContent();
        modelMap.addAttribute("dvts", dvts);
        return "admin/employee/dvt";
    }

    @GetMapping("bar")
    public String getBar(){
        return "admin/employee/bar";
    }

}
