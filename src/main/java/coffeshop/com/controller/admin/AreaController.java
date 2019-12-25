package coffeshop.com.controller.admin;

import coffeshop.com.DTO.request.area.CommonId;
import coffeshop.com.entity.Area;
import coffeshop.com.reponsitory.AreaRepository;
import coffeshop.com.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/area")
public class AreaController {

    @Autowired
    AreaService areaService;

    @GetMapping
    public String getHome(ModelMap modelMap,@RequestParam(name = "page", required = false, defaultValue = "0") Integer page){
        Page<Area> page1 = areaService.getHome(page);
        int a = page1.getTotalPages();
        modelMap.addAttribute("count", a);
        List<Area> areaList = page1.getContent();
        modelMap.addAttribute("areas", areaList);
        return "admin/area";
    }

    @PostMapping
    public String addArea(@RequestParam("AreaName") String AreaName){
        try {
            areaService.addArea(AreaName);
        }catch (Exception e){
            e.printStackTrace();
        }

        return "redirect:/admin/area";
    }

    @PostMapping("edit")
    public String editArea(@RequestParam("Area_id") Integer Area_id,@RequestParam("AreaName") String AreaName){
        areaService.edit(Area_id, AreaName);
        return "redirect:/admin/area";
    }

    @PostMapping("delete")
    public String deleteArea(CommonId area){
        try {
           areaService.deleteArea(area.getId());
        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/admin/area";
    }
}
