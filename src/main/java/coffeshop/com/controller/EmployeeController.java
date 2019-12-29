package coffeshop.com.controller;

import coffeshop.com.DTO.reponse.BillReponse;
import coffeshop.com.DTO.reponse.StatusFunction;
import coffeshop.com.entity.*;
import coffeshop.com.service.impl.BillServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.security.Principal;


@Controller
@RequestMapping("/salesman")
public class EmployeeController {

    @Autowired
    BillServiceImpl billService;


    @PostMapping(value = "create")
    @ResponseBody
    public BillReponse create(@RequestParam("billin") String billin, @RequestParam("id_table") Integer id_table, Principal principal ){
        return billService.createBill(billin, id_table, principal);
    }




    @PostMapping(value = "getbill")
    public String getBill(@RequestParam("id_bill") Integer id_bill, ModelMap modelMap){
        Bill bill = billService.findById(id_bill);
        modelMap.addAttribute("bill", bill);
        return "client/content/bill";
    }

    @PostMapping(value = "deletebill")
    @ResponseBody
    public StatusFunction deleteBill(@RequestParam("idbill") Integer idbill, @RequestParam("idtable") Integer idtable ){
        return billService.deleteBill(idbill, idtable);
    }

    @PostMapping(value = "editbill")
    @ResponseBody
    public StatusFunction editBill(@RequestParam("model") String model){
        return billService.editBill(model);
    }

    @PostMapping(value = "/delete")
    @ResponseBody
    public StatusFunction deleteBillinfo(@RequestParam("model") String model){
        return billService.deleteBillinfo(model);
    }

    @PostMapping(value = "thanhtoan")
    @ResponseBody
    public StatusFunction thanhToan(@RequestParam("id_bill") Integer id_bill, Principal principal){
        return billService.thanhToan(id_bill, principal);
    }
    @Autowired
    ServletContext context;
    @GetMapping(value = "Reports", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    public void  exPortBill(HttpServletResponse response, @RequestParam("ReportType") String ReportType, @RequestParam("idbill") Integer idbill) throws IOException{
        billService.exPortBill(response, idbill);

    }

    @PostMapping("/index-changeTable")
    @ResponseBody
    public StatusFunction changTableFood(@RequestParam String dinnertableid,
                                         @RequestParam Integer dinnertableidOLD){
        return billService.changTableFood(dinnertableid, dinnertableidOLD);

    }
}
