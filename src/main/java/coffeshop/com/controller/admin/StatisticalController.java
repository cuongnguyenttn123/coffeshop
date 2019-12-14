package coffeshop.com.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/statistical")
public class StatisticalController {
    @GetMapping
    public String getHome(ModelMap modelMap){

        return "admin/statistical";
    }
}
