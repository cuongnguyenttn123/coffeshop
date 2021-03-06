package coffeshop.com.controller.admin;

import coffeshop.com.DTO.reponse.Bill2Reponse;
import coffeshop.com.DTO.request.area.CommonId;
import coffeshop.com.entity.Bill;
import coffeshop.com.reponsitory.BillRepository;
import coffeshop.com.service.BillService;
import coffeshop.com.service.BillinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin/bill")
public class BillController {

    @Autowired
    BillinfoService billinfoService;

    @Autowired
    BillService billService;


    @GetMapping
    public String getHome(ModelMap modelMap,@RequestParam(name = "page", required = false, defaultValue = "0") Integer page){

        if(page != 0 ){
            page = page -1;
        }
        Sort sort = Sort.by("id").descending();
        Pageable pageable = PageRequest.of(page, 10, sort);
        Page<Bill> bills1 = billService.getAllBy(pageable);
        int a = bills1.getTotalPages();
        modelMap.addAttribute("count", a);
        List<Bill> bills = bills1.getContent();
        List<Bill2Reponse> reponses = converterListBill(bills);
                modelMap.addAttribute("bills", reponses);
        return "admin/bill";
    }

    @PostMapping("info")
    public String getInfoBill(CommonId billid, ModelMap modelMap){
        Bill2Reponse bill2Reponse = billinfoService.getInfoBill(billid.getId());
        modelMap.addAttribute("bill", bill2Reponse);

        return "admin/content/billinfo";
    }

    public List<Bill2Reponse> converterListBill(List<Bill> bills){
        List<Bill2Reponse> reponses = new ArrayList<>();
        SimpleDateFormat localTimeFormat = new SimpleDateFormat("HH:mm");
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        for (Bill bill: bills
        ) {
            Bill2Reponse bill2Reponse = new Bill2Reponse();
            String timein = localTimeFormat.format(bill.getDateCheckIn());
            bill2Reponse.setCheckIn(timein);
            String timeout = localTimeFormat.format(bill.getDateCheckOut());
            bill2Reponse.setCheckOut(timeout);
            String date = formatter.format(bill.getDateCheckIn());
            bill2Reponse.setId(bill.getId());
            bill2Reponse.setDate(date);
            bill2Reponse.setTablefood(bill.getTablefood().getName());
            bill2Reponse.setEmployee(bill.getAccount().getName());
            reponses.add(bill2Reponse);
        }
        return reponses;
    };

}
