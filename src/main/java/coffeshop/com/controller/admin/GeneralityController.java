package coffeshop.com.controller.admin;

import coffeshop.com.entity.Bill;
import coffeshop.com.entity.Employee;
import coffeshop.com.entity.Role;
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
        int sumEmployee = employeeRepository.findAll().size();
        int sumAdmin = checkAdmin(employeeRepository.findAll());
        sumEmployee = sumEmployee - sumAdmin;
        int sumbill = bills.size();
        Currency currency = Currency.getInstance("VND");
        Locale locale = new Locale("vi", "VN");
        DecimalFormatSymbols df = DecimalFormatSymbols.getInstance(locale);
        df.setCurrency(currency);
        NumberFormat numberFormat = NumberFormat.getCurrencyInstance(locale);
        numberFormat.setCurrency(currency);
        Double sum = billService.statisticalBill(bills);
        modelMap.addAttribute("sum", numberFormat.format(sum));
        modelMap.addAttribute("sumbill", sumbill);
        Employee employee = employeeRepository.findByUserName(principal.getName());
        modelMap.addAttribute("emp", employee);
        modelMap.addAttribute("sumAdmin", sumAdmin);
        modelMap.addAttribute("sumEmployee", sumEmployee);
        return "admin/generality";
    }

    public int checkAdmin(List<Employee> employees){
        int i = 0;
        for (Employee employee: employees
             ) {
            List<Role> roles = employee.getRoles();
            for (Role role: roles
                 ) {
                if (role.getName().equalsIgnoreCase("ROLE_ADMIN")){
                    i++;
                }
            }
        }
        return i;
    }
}
