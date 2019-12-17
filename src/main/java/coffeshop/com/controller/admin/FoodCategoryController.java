package coffeshop.com.controller.admin;

import coffeshop.com.DTO.request.area.Area;
import coffeshop.com.entity.Foodcategory;
import coffeshop.com.reponsitory.FoodcategaryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/category")
public class FoodCategoryController {
    @Autowired
    FoodcategaryRepository foodcategaryRepository;


    @GetMapping
    public String getHome(ModelMap modelMap,@RequestParam(name = "page", required = false, defaultValue = "0") Integer page,
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
        return "admin/category";
    }

    @GetMapping("add")
    public String addCategory(){

        return "admin/content/categoryadd";
    }


    @PostMapping("add")
    public String addCategory(@RequestParam("FoodCategory_name") String name,
                               @RequestParam("Decription") String description, @RequestParam("status") Boolean status){
        Foodcategory foodcategory = new Foodcategory();
        foodcategory.setName(name);
        foodcategory.setDescription(description);
        Integer stt;
        if (status){
            stt = 0;
        }else {
            stt = 1;
        }
        foodcategory.setStatus(stt);
        foodcategaryRepository.save(foodcategory);
        return "redirect:/admin/category";
    }


    @GetMapping("edit/{id}")
    public String editCategory(@PathVariable("id") Integer id, ModelMap modelMap){
        try {
            Foodcategory category = foodcategaryRepository.findById(id).get();
            modelMap.addAttribute("category", category);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "admin/content/categoryedit";
    }

    @PostMapping("edit")
    public String editCategory(@RequestParam("FoodCategory_id") Integer id, @RequestParam("FoodCategory_name") String name,
                               @RequestParam("Decription") String description, @RequestParam("status") Boolean status){
        Foodcategory foodcategory = foodcategaryRepository.findById(id).get();
        Integer stt;
        if (status){
            stt = 0;
        }else {
            stt = 1;
        }
        foodcategory.setStatus(stt);
        foodcategory.setName(name);
        foodcategory.setDescription(description);
        foodcategaryRepository.save(foodcategory);
        return "redirect:/admin/category";
    }

    @PostMapping("delete")
    public String deleteFood(Area area){
        try{
            foodcategaryRepository.deleteById(area.getId());
        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/admin/category";
    }
}
