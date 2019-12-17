package coffeshop.com.controller.admin;

import coffeshop.com.entity.Bill;
import coffeshop.com.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/admin/statistical")
public class StatisticalController {
    @Autowired
    BillService billService;

    @GetMapping
    public String getHome(ModelMap modelMap){
        List<Bill> bills = billService.findALL();
        Double sum = billService.statisticalBill(bills);
        Locale locale = new Locale("vi", "VN");
        Currency currency = Currency.getInstance("VND");
        DecimalFormatSymbols df = DecimalFormatSymbols.getInstance(locale);
        df.setCurrency(currency);
        NumberFormat numberFormat = NumberFormat.getCurrencyInstance(locale);
        numberFormat.setCurrency(currency);
        System.out.println(numberFormat.format(sum));
        modelMap.addAttribute("sum", numberFormat.format(sum));
        return "admin/statistical";
    }

    @GetMapping("search")
    public String search(ModelMap modelMap,
                         @RequestParam(name = "ChonTime", required = false, defaultValue = "") Integer ChonTime,
                         @RequestParam(name = "date", required = false, defaultValue = "") String date,
                         @RequestParam(name = "date1", required = false, defaultValue = "") String date1) throws ParseException {
        List<Bill> bills = new ArrayList<>();

        if (ChonTime == null){
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date da = formatter.parse(date);
            Date da1 = formatter.parse(date1);
            bills = billService.thongkeTuyChon(da, da1);
        }else {
            if (ChonTime == 1){
                bills = billService.thongkeTheoNgay();
            }

            if (ChonTime == 2){
                bills = billService.thongkeTheoThang();
            }
            if (ChonTime == 3){
                bills = billService.thongkeTheoNam();
            }
        }




        Double sum = billService.statisticalBill(bills);
        Locale locale = new Locale("vi", "VN");
        Currency currency = Currency.getInstance("VND");
        DecimalFormatSymbols df = DecimalFormatSymbols.getInstance(locale);
        df.setCurrency(currency);
        NumberFormat numberFormat = NumberFormat.getCurrencyInstance(locale);
        numberFormat.setCurrency(currency);
        System.out.println(numberFormat.format(sum));
        modelMap.addAttribute("sum", numberFormat.format(sum));
        return "admin/statistical";
    }
}
