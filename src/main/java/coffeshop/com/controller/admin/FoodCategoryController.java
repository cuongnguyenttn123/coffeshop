package coffeshop.com.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/category")
public class FoodCategoryController {
    @GetMapping
    public String getHome(ModelMap modelMap){

        return "admin/category";
    }
}
