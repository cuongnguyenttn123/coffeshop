package coffeshop.com.controller;

import coffeshop.com.entity.Categoryproduct;
import coffeshop.com.repository.CategoryProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/home")
public class HomeController {
    @Autowired
    CategoryProductRepository categoryProductRepository;
    @GetMapping()
    public String getHome(ModelMap modelMap){
        List<Categoryproduct> categoryproducts = categoryProductRepository.findAll();
        modelMap.addAttribute("cate", categoryproducts);
        return "home";
    }
}
