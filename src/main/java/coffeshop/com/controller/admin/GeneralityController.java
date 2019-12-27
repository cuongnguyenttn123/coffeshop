package coffeshop.com.controller.admin;

import coffeshop.com.entity.Bill;
import coffeshop.com.entity.Employee;
import coffeshop.com.reponsitory.BillinfoRepository;
import coffeshop.com.reponsitory.EmployeeRepository;
import coffeshop.com.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.Currency;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/admin/")
public class GeneralityController {
    @Autowired
    BillService billService;

    @Autowired
    BillinfoRepository billinfoRepository;

    @Autowired
    EmployeeRepository employeeRepository;
    @GetMapping("information")
    public String getHome(ModelMap modelMap, Principal principal){
         Employee employee = employeeRepository.findByUserName(principal.getName());

        modelMap.addAttribute("emp", employee);
        return "admin/information";
    }

    @GetMapping("generality")
    public String getGenerality(ModelMap modelMap, Principal principal){
        List<Bill> bills = billService.findALL();
        int sumbill = bills.size();
        Double sum = billService.statisticalBill(bills);
        Locale locale = new Locale("vi", "VN");
        Currency currency = Currency.getInstance("VND");
        DecimalFormatSymbols df = DecimalFormatSymbols.getInstance(locale);
        df.setCurrency(currency);
        NumberFormat numberFormat = NumberFormat.getCurrencyInstance(locale);
        numberFormat.setCurrency(currency);
        System.out.println(numberFormat.format(sum));
        modelMap.addAttribute("sum", numberFormat.format(sum));
        modelMap.addAttribute("sumbill", sumbill);
        Employee employee = employeeRepository.findByUserName(principal.getName());
        modelMap.addAttribute("emp", employee);
        return "admin/generality";
    }
}
