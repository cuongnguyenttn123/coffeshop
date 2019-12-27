package coffeshop.com.controller.admin;

import coffeshop.com.DTO.reponse.DvtReponse;
import coffeshop.com.DTO.request.DvtRequest;
import coffeshop.com.DTO.request.area.CommonId;
import coffeshop.com.entity.Dvt;
import coffeshop.com.reponsitory.DvtRepository;
import com.fasterxml.jackson.annotation.JsonIgnore;
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
@RequestMapping("/admin/dvt")
public class DvtController {
    @Autowired
    DvtRepository dvtRepository;

    @GetMapping
    public String getHome(ModelMap modelMap,@RequestParam(name = "page", required = false, defaultValue = "0") Integer page,
                          @RequestParam(name = "mess", required = false, defaultValue = "") String mess){
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
        modelMap.addAttribute("mess", mess);
        return "admin/dvt";
    }

    @PostMapping()
    public String addFood(ModelMap modelMap, @RequestParam("DVT_Name") String name, @RequestParam("Description") String description,
                          @RequestParam("status") Boolean status){
        try{
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
            modelMap.addAttribute("mess", "Thêm Thành Công");
        }catch (Exception e){
            modelMap.addAttribute("mess", "Thêm Thất Bại");
        }

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
    public String editFood(ModelMap modelMap, DvtRequest dvtRequest){
        try {
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
            modelMap.addAttribute("mess", "Chỉnh Sửa Thành Công");
        }catch (Exception e){
            modelMap.addAttribute("mess", "Chỉnh Sửa Thất Bại");
        }

        return "redirect:/admin/dvt";
    }

    @GetMapping("delete")
    public String deleteFood(CommonId dvtId){
        try{
            dvtRepository.deleteById(dvtId.getId());
        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/admin/dvt";
    }
}
