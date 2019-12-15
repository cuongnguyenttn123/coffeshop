package coffeshop.com.controller.admin;

import coffeshop.com.DTO.reponse.DvtReponse;
import coffeshop.com.DTO.request.DvtRequest;
import coffeshop.com.DTO.request.area.Area;
import coffeshop.com.entity.Dvt;
import coffeshop.com.reponsitory.DvtRepository;
import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/dvt")
public class DvtController {
    @Autowired
    DvtRepository dvtRepository;

    @GetMapping
    public String getHome(ModelMap modelMap){
        List<Dvt> dvts = dvtRepository.findAll();
        modelMap.addAttribute("dvts", dvts);
        return "admin/dvt";
    }

    @PostMapping()
    public String addFood(@RequestParam("DVT_Name") String name, @RequestParam("Description") String description,
                          @RequestParam("status") Boolean status){
        Dvt dvt = new Dvt();
        dvt.setName(name);
        Integer stt;
        dvt.setDescription(description);
        if (status){
            stt = 0;
        }else {
            stt = 1;
        }
        dvt.setStatus(stt);
        dvtRepository.save(dvt);
        return "redirect:/admin/dvt";
    }


    @GetMapping("edit")
    @ResponseBody
    @JsonIgnore
    public DvtReponse editFood(@RequestParam("id") Integer id){
        Dvt dvt = dvtRepository.findById(id).get();

        DvtReponse dvtReponse = new DvtReponse();
        dvtReponse.setId(dvt.getId());
        dvtReponse.setDescreption(dvt.getDescription());
        dvtReponse.setDVT_Name(dvt.getName());
        Boolean a;
        if (dvt.getStatus() == 0){
            a = true;
        }else {
            a = false;
        }
        dvtReponse.setStatus(a);

        return dvtReponse;
    }

    @PostMapping("edit")
    public String editFood(DvtRequest dvtRequest){
        Dvt dvt = dvtRepository.findById(dvtRequest.getDVT_id()).get();
        dvt.setDescription(dvtRequest.getDescreption());
        dvt.setName(dvtRequest.getDVT_Name());
        Integer stt;
        if (dvtRequest.getStatus()){
            stt = 0;
        }else {
            stt = 1;
        }
        dvt.setStatus(stt);
        dvtRepository.save(dvt);
        return "redirect:/admin/dvt";
    }

    @PostMapping("delete")
    public String deleteFood(Area area){
        try{
            dvtRepository.deleteById(area.getId());
        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/admin/dvt";
    }
}