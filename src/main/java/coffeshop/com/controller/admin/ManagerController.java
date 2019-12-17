package coffeshop.com.controller.admin;

import coffeshop.com.DTO.reponse.BillReponse;
import coffeshop.com.entity.Bill;
import coffeshop.com.entity.Billinfo;
import coffeshop.com.entity.Tablefood;
import coffeshop.com.reponsitory.BillRepository;
import coffeshop.com.reponsitory.BillinfoRepository;
import coffeshop.com.reponsitory.TablefoodRepository;
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
@RequestMapping("/admin/manager")
public class ManagerController {
    @Autowired
    BillRepository billRepository;

    @Autowired
    TablefoodRepository tablefoodRepository;

    @Autowired
    BillinfoRepository billinfoRepository;

    @GetMapping
    public String getHome(ModelMap modelMap, @RequestParam(name = "page", required = false, defaultValue = "0") Integer page){
        if(page != 0 ){
            page = page -1;
        }
        Sort sort = Sort.by("id").descending();
        Pageable pageable = PageRequest.of(page, 5, sort);
        Page<Billinfo> billinofs = billinfoRepository.getBillinfos(pageable,0);
        int a = billinofs.getTotalPages();
        modelMap.addAttribute("count", a);

        List<Billinfo> billinfos = billinofs.getContent();
        modelMap.addAttribute("billinfos", billinfos);
        return "admin/manager";
    }

    @PostMapping("tramon")
    @ResponseBody
    public BillReponse traMon(@RequestParam("idbill")Integer idBillinfo){
        Billinfo billinfo = billinfoRepository.findById(idBillinfo).get();
        billinfo.setStatus(1);
        billinfoRepository.save(billinfo);
        BillReponse billReponse = new BillReponse();
        billReponse.setIdBill(idBillinfo);
        return billReponse;
    }
}
