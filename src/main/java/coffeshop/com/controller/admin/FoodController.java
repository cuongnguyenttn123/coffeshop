package coffeshop.com.controller.admin;

import coffeshop.com.DTO.reponse.FoodReponse;
import coffeshop.com.DTO.request.FoodRequest;
import coffeshop.com.DTO.request.area.Area;
import coffeshop.com.entity.Dvt;
import coffeshop.com.entity.Food;
import coffeshop.com.entity.Foodcategory;
import coffeshop.com.reponsitory.DvtRepository;
import coffeshop.com.reponsitory.FoodRepository;
import coffeshop.com.reponsitory.FoodcategaryRepository;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.util.JSONPObject;
import jdk.nashorn.internal.ir.ObjectNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin/food")
public class FoodController {
    @Autowired
    DvtRepository dvtRepository;

    @Autowired
    FoodcategaryRepository foodcategaryRepository;

    @Autowired
    FoodRepository foodRepository;



    @GetMapping
    public String getHome(ModelMap modelMap,@RequestParam(name = "page", required = false, defaultValue = "0") Integer page,
                          @RequestParam(name = "seaching", required = false, defaultValue = "") String search,
                          @RequestParam(name = "idCategory", required = false, defaultValue = "") Integer idCategory,
                          @RequestParam(name = "idDVT", required = false, defaultValue = "") Integer idDVT){
        if(page != 0 ){
            page = page -1;
        }
        Sort sort = Sort.by("id").descending();
        Pageable pageable = PageRequest.of(page, 10, sort);
        Page<Food> page1 = foodRepository.getSearch(pageable, search,idCategory, idDVT );
        int a = page1.getTotalPages();
        modelMap.addAttribute("count", a);


        List<Food> foods = page1.getContent();
        List<Foodcategory> foodcategories = foodcategaryRepository.findAll();
        List<Dvt> dvts = dvtRepository.findAll();
        modelMap.addAttribute("dvts", dvts);
        modelMap.addAttribute("foods", foods);
        modelMap.addAttribute("foodcategories", foodcategories);
        return "admin/food";
    }


    @PostMapping
    public String addFood(@RequestParam("Food_name")String Food_name, @RequestParam("") Integer idCategory,
                          @RequestParam("idDVT") Integer idDVT, @RequestParam("price") Integer price,
                          @RequestParam("status") Boolean status){
        Food food = new Food();
        Dvt dvt = dvtRepository.findById(idDVT).get();
        Foodcategory foodcategory = foodcategaryRepository.findById(idCategory).get();

        food.setDvt(dvt);
        food.setName(Food_name);
        food.setFoodcategory(foodcategory);
        food.setPrice(price);
        Integer stt;
        if (status){
            stt = 0;
        }else {
            stt = 1;
        }
        food.setStatus(stt);
        foodRepository.save(food);

        return "redirect:/admin/food";
    }

    @GetMapping("edit")
    @ResponseBody
    @JsonIgnore
    public FoodReponse editFood(@RequestParam("id") Integer id){
        Food food = foodRepository.findById(id).get();
        FoodReponse foodReponse = new FoodReponse();
        foodReponse.setId(food.getId());
        foodReponse.setName(food.getName());
        foodReponse.setPrice(food.getPrice());
        foodReponse.setStatus(food.getStatus());
        return foodReponse;
    }

    @PostMapping("edit")
    public String editFood(FoodRequest foodRequest){
        Food food = foodRepository.findById(foodRequest.getFood_id()).get();
        Foodcategory foodcategory = foodcategaryRepository.findById(foodRequest.getIdCategory()).get();
        Dvt dvt = dvtRepository.findById(foodRequest.getIdDVT()).get();
        food.setName(foodRequest.getFood_name());
        food.setDvt(dvt);
        food.setPrice(foodRequest.getPrice());
        food.setFoodcategory(foodcategory);
        Integer stt;
        if (foodRequest.getStatus()){
            stt = 0;
        }else {
            stt = 1;
        }
        food.setStatus(stt);
        foodRepository.save(food);
        return "redirect:/admin/food";
    }

    @PostMapping("delete")
    public String deleteFood(Area area){
        try{
            foodRepository.deleteById(area.getId());
        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/admin/food";
    }








}
