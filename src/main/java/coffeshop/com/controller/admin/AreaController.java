package coffeshop.com.controller.admin;

import coffeshop.com.entity.Area;
import coffeshop.com.reponsitory.AreaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/area")
public class AreaController {
    @Autowired
    AreaRepository areaRepository;

    @GetMapping
    public String getHome(ModelMap modelMap){
        List<Area> areaList = areaRepository.findAll();
        modelMap.addAttribute("areas", areaList);
        return "admin/area";
    }

    @PostMapping
    public String addArea(@RequestParam("AreaName") String AreaName){
        try {
            Area area = new Area();
            area.setName(AreaName);
            areaRepository.save(area);
        }catch (Exception e){
            e.printStackTrace();
        }

        return "redirect:/admin/area";
    }

    @PostMapping("edit")
    public String editArea(@RequestParam("Area_id") Integer Area_id,@RequestParam("AreaName") String AreaName){
        try {
            Area area = areaRepository.findById(Area_id).get();
            area.setName(AreaName);
            areaRepository.save(area);
        }catch (Exception e){
            e.printStackTrace();
        }

        return "redirect:/admin/area";
    }

    @PostMapping("delete")
    public String deleteArea( coffeshop.com.DTO.request.area.Area area){
        try {

            areaRepository.deleteById(area.getId());

        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/admin/area";
    }
}
