package coffeshop.com.controller.admin;

import coffeshop.com.DTO.reponse.Bill2Reponse;
import coffeshop.com.DTO.request.area.Area;
import coffeshop.com.entity.Bill;
import coffeshop.com.reponsitory.BillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin/bill")
public class BillController {
    @Autowired
    BillRepository billRepository;

    @GetMapping
    public String getHome(ModelMap modelMap){
        List<Bill> bills = billRepository.findAll();
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
        modelMap.addAttribute("bills", reponses);
        return "admin/bill";
    }

    @PostMapping("info")
    public String getInfoBill(Area area, ModelMap modelMap){
        SimpleDateFormat localTimeFormat = new SimpleDateFormat("HH:mm");
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Bill bill = billRepository.findById(area.getId()).get();
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
        bill2Reponse.setBillinfos(bill.getBillinfos());
        modelMap.addAttribute("bill", bill2Reponse);

        return "admin/content/billinfo";
    }

}
