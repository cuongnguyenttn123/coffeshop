package coffeshop.com.controller.admin;

import coffeshop.com.entity.Area;
import coffeshop.com.entity.Tablefood;
import coffeshop.com.reponsitory.AreaRepository;
import coffeshop.com.reponsitory.TablefoodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/table")
public class TableFoodController {
    @Autowired
    AreaRepository areaRepository;

    @Autowired
    TablefoodRepository tablefoodRepository;

    @GetMapping
    public String getHome(ModelMap modelMap){
        List<Area> areas = areaRepository.findAll();
        modelMap.addAttribute("areas", areas);

        List<Tablefood> tables = tablefoodRepository.findAll();
        /*Tablefood tablefood = tables.get(1);
        tablefood.*/
        modelMap.addAttribute("tables", tables);
        return "admin/table";
    }


    @PostMapping
    public String addTable(@RequestParam("TableFood_name") String TableFood_name,
                           @RequestParam("idArea") String idArea,
                           @RequestParam("status") Boolean status){
        try {
            Tablefood tablefood = new Tablefood();
            Area area = areaRepository.findById(Integer.parseInt(idArea)).get();
            tablefood.setArea(area);
            tablefood.setName(TableFood_name);
            Integer startus_templ;
            if (status){
                startus_templ = 0;
            }else {
                startus_templ = 1;
            }
            tablefood.setStatus(startus_templ);
            tablefoodRepository.save(tablefood);
        }catch (Exception e){
            e.printStackTrace();
        }

        return "redirect:/admin/table";
    }

    @PostMapping("edit")
    public String editTable(@RequestParam("TableFood_id") Integer TableFood_id,@RequestParam("TableFood_name") String TableFood_name,
                            @RequestParam("idArea") Integer idArea,@RequestParam("status") Boolean status ){
        try {
            Tablefood tablefood = tablefoodRepository.findById(TableFood_id).get();
            Area area = areaRepository.findById(idArea).get();
            tablefood.setName(TableFood_name);
            Integer startus_templ;
            if (status){
                startus_templ = 0;
            }else {
                startus_templ = 1;
            }
            tablefood.setArea(area);
            tablefood.setStatus(startus_templ);
            tablefoodRepository.save(tablefood);
        }catch (Exception e){
            e.printStackTrace();
        }

        return "redirect:/admin/table";
    }

    @GetMapping("edit/{id}")
    public String getTable(@PathVariable("id") Integer id, ModelMap modelMap){
        try {
            Tablefood tablefood = tablefoodRepository.findById(id).get();
            List<Area> areas = areaRepository.findAll();
            modelMap.addAttribute("tablefood", tablefood);
            modelMap.addAttribute("areas", areas);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "admin/tableedit";
    }

    @PostMapping("delete")
    public String deleteTable(coffeshop.com.DTO.request.area.Area area){
        try {

            tablefoodRepository.deleteById(area.getId());

        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/admin/table";
    }
}
