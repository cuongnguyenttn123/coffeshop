package coffeshop.com.controller.admin;

import coffeshop.com.DTO.reponse.BillReponse;
import coffeshop.com.entity.*;
import coffeshop.com.reponsitory.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    DvtRepository dvtRepository;

    @Autowired
    EmployeeRepository employeeRepository;

    @Autowired
    RoleRepository roleRepository;

    @Autowired
    BillinfoRepository billinfoRepository;

    @Autowired
    FoodcategaryRepository foodcategaryRepository;

    @Autowired
    FoodRepository foodRepository;

    @GetMapping("home")
    public String getHome(Principal principal, ModelMap modelMap){
        Employee employee = employeeRepository.findByUserName(principal.getName());

        modelMap.addAttribute("emp", employee);
        return "admin/employee/home";
    }

    @GetMapping("profile")
    public String editProfile(ModelMap modelMap, Principal principal){
        Employee employee = employeeRepository.findByUserName(principal.getName());

        modelMap.addAttribute("emp", employee);
        return "admin/employee/profile";
    }

    @PostMapping("profile")
    public String editEmployee(@RequestParam("UserName") String userName, @RequestParam("PassWord") String PassWord,
                               @RequestParam("Name") String Name,@RequestParam("Email") String Email,
                               @RequestParam("avt") String avt,
                               @RequestParam("Address") String Address,@RequestParam("Phone") String Phone,
                               @RequestParam("status") Boolean status,
                               Principal principal){

        Employee employee = employeeRepository.findByUserName(principal.getName());
        employee.setAddress(Address);
        employee.setEmail(Email);
        employee.setName(Name);
        employee.setAvt(avt);
        String hash = BCrypt.hashpw(PassWord, BCrypt.gensalt(12));
        employee.setPassWord(hash);
        employee.setUserName(userName);
        employee.setPhone(Phone);
        employeeRepository.save(employee);
        return "redirect:/user";
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

    @GetMapping("search")
    public String seachFood(ModelMap modelMap, @RequestParam(name = "page", required = false, defaultValue = "0") Integer page,
                            @RequestParam("seaching")String seaching, @RequestParam("idCategory") Integer idCategory,
                            @RequestParam("idDVT") Integer idDVT){
        if(page != 0 ){
            page = page -1;
        }
        Sort sort = Sort.by("id").descending();
        Pageable pageable = PageRequest.of(page, 10, sort);
        Page<Food> page1 = foodRepository.getSearch(pageable, seaching, idCategory, idDVT);
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
    public String getCategory(ModelMap modelMap,@RequestParam(name = "page", required = false, defaultValue = "0") Integer page,
                              @RequestParam(name = "seaching", required = false, defaultValue = "") String search){
        if(page != 0 ){
            page = page -1;
        }
        Sort sort = Sort.by("id").descending();
        Pageable pageable = PageRequest.of(page, 10, sort);
        Page<Foodcategory> page1 = foodcategaryRepository.getSearch(pageable, search);
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
    public String getBar(ModelMap modelMap, @RequestParam(name = "page", required = false, defaultValue = "0") Integer page){
        if(page != 0 ){
            page = page -1;
        }
        Sort sort = Sort.by("id").descending();
        Pageable pageable = PageRequest.of(page, 5, sort);
        Page<Billinfo> billinofs = billinfoRepository.getBillinfos(pageable,0);
        int a = billinofs.getTotalPages();
        modelMap.addAttribute("count", a);

        List<Billinfo> billinfos = billinofs.getContent();
        modelMap.addAttribute("billinfos", billinfos);
        return "admin/employee/bar";
    }

    @PostMapping("tramon")
    @ResponseBody
    public BillReponse traMon(@RequestParam("idbill")Integer idBillinfo){
        Billinfo billinfo = billinfoRepository.findById(idBillinfo).get();
        billinfo.setStatus(1);
        billinfoRepository.save(billinfo);
        BillReponse billReponse = new BillReponse();
        billReponse.setIdBill(idBillinfo);
        return billReponse;
    }

}
