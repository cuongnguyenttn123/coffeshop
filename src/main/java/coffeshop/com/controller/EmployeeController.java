package coffeshop.com.controller;

import coffeshop.com.DTO.reponse.BillReponse;
import coffeshop.com.DTO.reponse.StatusFunction;
import coffeshop.com.DTO.request.BilldetailRequest;
import coffeshop.com.entity.*;
import coffeshop.com.reponsitory.*;
import coffeshop.com.service.impl.BillServiceImpl;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.io.FileUtils;
import org.apache.poi.xwpf.usermodel.*;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTJc;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STJc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.math.BigInteger;
import java.security.Principal;
import java.util.List;

import java.util.Date;


@Controller
@RequestMapping("/HomeClient")
public class EmployeeController {

    @Autowired
    BillServiceImpl billService;


    @PostMapping(value = "Create")
    @ResponseBody
    public BillReponse create(@RequestParam("billin") String billin, @RequestParam("id_table") Integer id_table,
                              @RequestParam("idAc") Integer idAc , Principal principal ){
        return billService.createBill(billin, id_table, principal);
    }




    @PostMapping(value = "GetBill")
    public String getBill(@RequestParam("id_bill") Integer id_bill, ModelMap modelMap){
        Bill bill = billService.findById(id_bill);
        modelMap.addAttribute("bill", bill);
        return "client/content/bill";
    }

    @PostMapping(value = "DeleteBill")
    @ResponseBody
    public StatusFunction deleteBill(@RequestParam("idbill") Integer idbill, @RequestParam("idtable") Integer idtable ){
        return billService.deleteBill(idbill, idtable);
    }

    @PostMapping(value = "EditBill")
    @ResponseBody
    public StatusFunction editBill(@RequestParam("model") String model){
        return billService.editBill(model);
    }

    @PostMapping(value = "/Delete")
    @ResponseBody
    public StatusFunction deleteBillinfo(@RequestParam("model") String model){
        return billService.deleteBillinfo(model);
    }

    @PostMapping(value = "ThanhToan")
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
