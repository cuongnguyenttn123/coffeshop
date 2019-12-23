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
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;
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
import java.security.Principal;
import java.util.List;

import java.util.Date;


@Controller
@RequestMapping("/HomeClient")
public class EmployeeController {
    @Autowired
    TablefoodRepository tablefoodRepository;

    @Autowired
    BillRepository billRepository;

    @Autowired
    BillServiceImpl billService;

    @Autowired
    EmployeeRepository employeeRepository;

    @Autowired
    BillinfoRepository billdetailRepository;

    @Autowired
    FoodRepository foodRepository;

    @PostMapping(value = "Create")
    @ResponseBody
    public BillReponse create(@RequestParam("billin") String billin, @RequestParam("id_table") Integer id_table,
                              @RequestParam("idAc") Integer idAc , Principal principal ){
        ObjectMapper objectMapper = new ObjectMapper();
        Employee employee = employeeRepository.findByUserName(principal.getName());
        Tablefood tablefood = tablefoodRepository.findById(id_table).get();

        try{
            BilldetailRequest billdetailRequest =new BilldetailRequest();
            JsonNode jsonNode = objectMapper.readTree(billin);

            billdetailRequest.setIdBill(jsonNode.get("idBill").asInt());
            billdetailRequest.setCount(jsonNode.get("count").asInt());
            billdetailRequest.setIdFood(jsonNode.get("idFood").asInt());
            billdetailRequest.setIdAccount(jsonNode.get("idAccount").asInt());
            billdetailRequest.setIdTable(jsonNode.get("idTable").asInt());
            billdetailRequest.setPrice(jsonNode.get("Price").asInt());

            if (billdetailRequest.getIdBill()==0)
            {
                //them
                Bill bill = new Bill();
                Date date = new Date();
                bill.setDateCheckOut(date);
                bill.setDateCheckIn(date);
                bill.setIdStatus(0);
                bill.setAccount(employee);
                bill.setTablefood(tablefood);
                billRepository.save(bill);
                billdetailRequest.setIdBill(bill.getId());

            }

            if (billdetailRequest.getIdBill()!=0)
            {
                Bill bill = billRepository.findById(billdetailRequest.getIdBill()).get();
                List<Billinfo> billdetailList = bill.getBillinfos();
                if(billdetailList.size()==0){
                    Billinfo billdetail = new Billinfo();
                    billdetail.setCount(billdetailRequest.getCount());
                    Food food = foodRepository.findById(billdetailRequest.getIdFood()).get();
                    billdetail.setFood(food);
                    billdetail.setStatus(0);
                    billdetail.setPrice(billdetailRequest.getPrice());
                    billdetail.setBill(bill);
                    billdetail.setTablefood(bill.getTablefood());
                    billdetailRepository.save(billdetail);
                }else {
                    int i = isCheckIdBillinfo(billdetailRequest, billdetailList);
                    if (i != -1){
                        Billinfo billinfo = billdetailList.get(i);
                        billinfo.setCount(billinfo.getCount()+1);
                        billinfo.setStatus(0);
                        billdetailRepository.save(billinfo);
                    }else {
                        Billinfo billdetail1 = new Billinfo();
                        billdetail1.setCount(billdetailRequest.getCount());
                        Food food = foodRepository.findById(billdetailRequest.getIdFood()).get();
                        billdetail1.setFood(food);
                        billdetail1.setStatus(0);
                        billdetail1.setPrice(billdetailRequest.getPrice());
                        billdetail1.setBill(bill);
                        billdetailRepository.save(billdetail1);
                    }
                }
                tablefood.setIdBill(bill.getId());
                tablefoodRepository.save(tablefood);
            }


            BillReponse billReponse = new BillReponse();
            billReponse.setId_table(id_table);
            billReponse.setIdBill(billdetailRequest.getIdBill());
            System.out.println(billReponse);
            return billReponse;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    private int isCheckIdBillinfo(BilldetailRequest billdetail, List<Billinfo> billdetailList) {
        boolean bb = false;
        for (int i = 0 ;  i< billdetailList.size(); i++){

            Integer a = billdetailList.get(i).getFood().getId();
            Integer b = billdetail.getIdFood();
            if (b.equals(a)){
                bb =  true;
                return i;
            }

        }
        return -1;

    }


    @PostMapping(value = "GetBill")
    public String getBill(@RequestParam("id_bill") Integer id_bill, ModelMap modelMap){
        List<Tablefood> tableNull = tablefoodRepository.getTablefoodByIdBill(0);
        Bill bill = billService.findById(id_bill);

        modelMap.addAttribute("bill", bill);
        return "client/content/bill";
    }

    @PostMapping(value = "DeleteBill")
    @ResponseBody
    public StatusFunction deleteBill(@RequestParam("idbill") Integer idbill, @RequestParam("idtable") Integer idtable ){
        StatusFunction statusFunction = new StatusFunction();
        try{
            Bill bill = billRepository.findById(idbill).get();
            bill.setStatus(2);
            billRepository.save(bill);
            Tablefood tablefood = tablefoodRepository.findById(idtable).get();
            tablefood.setIdBill(0);
            tablefoodRepository.save(tablefood);
            statusFunction.setStatus(true);
        }catch (Exception e){
            e.printStackTrace();
            statusFunction.setStatus(false);
        }
        return statusFunction;
    }

    @PostMapping(value = "EditBill")
    @ResponseBody
    public StatusFunction editBill(@RequestParam("model") String model){
        ObjectMapper objectMapper = new ObjectMapper();
        StatusFunction statusFunction = new StatusFunction();
        try{
            JsonNode jsonNode = objectMapper.readTree(model);
            Integer a = jsonNode.get("BillInfo_id").asInt();
            System.out.println(a);
            Billinfo billdetail = billdetailRepository.findById(a).get();
            billdetail.setCount(jsonNode.get("count").asInt());
            billdetailRepository.save(billdetail);
            statusFunction.setStatus(true);
        }catch (Exception e){
            e.printStackTrace();
            statusFunction.setStatus(false);
        }
        return statusFunction;
    }

    @PostMapping(value = "/Delete")
    @ResponseBody
    public StatusFunction delete(@RequestParam("model") String model){
        ObjectMapper objectMapper = new ObjectMapper();
        StatusFunction statusFunction = new StatusFunction();
        try{
            JsonNode jsonNode = objectMapper.readTree(model);
            Integer integer = jsonNode.get("BillInfo_id").asInt();
            billdetailRepository.deleteById(integer);
            statusFunction.setStatus(true);
        }catch (Exception e){
            e.printStackTrace();
            statusFunction.setStatus(true);
        }
        return statusFunction;
    }

    @PostMapping(value = "ThanhToan")
    @ResponseBody
    public StatusFunction thanhToan(@RequestParam("id_bill") Integer id_bill, Principal principal){
        StatusFunction statusFunction = new StatusFunction();
        try{
            Employee employee = employeeRepository.findByUserName(principal.getName());
            Bill bill = billRepository.findById(id_bill).get();
            bill.setStatus(1);
            Date date = new Date();
            bill.setAccount(employee);
            bill.setDateCheckOut(date);
            billRepository.save(bill);
            Tablefood tablefood = bill.getTablefood();
            tablefood.setIdBill(0);
            tablefoodRepository.save(tablefood);
            statusFunction.setStatus(true);
        }catch (Exception e){
            e.printStackTrace();
            statusFunction.setStatus(false);
        }
        return statusFunction;
    }
    @Autowired
    ServletContext context;
    @GetMapping(value = "Reports", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    public void  exPortBill(HttpServletResponse response, @RequestParam("ReportType") String ReportType, @RequestParam("idbill") Integer idbill) throws IOException{
        Bill bill = billRepository.findById(idbill).get();
        XWPFDocument document = new XWPFDocument();

        XWPFParagraph titleGraph = document.createParagraph();

        titleGraph.setAlignment(ParagraphAlignment.CENTER);

        String title = "Cafe High5";

        XWPFRun titleRun = titleGraph.createRun();

        titleRun.setBold(true);

        titleRun.setText(title);



        XWPFParagraph titleGraph1 = document.createParagraph();
        titleGraph1.setAlignment(ParagraphAlignment.CENTER);
        String title1 = "Địa chỉ: 104 Ngô Thì Nhậm, Liên Chiểu, TP Đà Nẵng";
        XWPFRun titleRun1 = titleGraph1.createRun();
        titleRun1.setText(title1);

        XWPFParagraph titleGraph2 = document.createParagraph();
        titleGraph2.setAlignment(ParagraphAlignment.CENTER);
        String title2 = "Hóa Đơn Thanh Toán";
        XWPFRun titleRun2 = titleGraph2.createRun();
        titleRun2.setText(title2);

        XWPFParagraph titleGraph3 = document.createParagraph();
        titleGraph3.setAlignment(ParagraphAlignment.CENTER);
        String title3 = "Thu ngân: "+ bill.getAccount().getName();
        XWPFRun titleRun3 = titleGraph3.createRun();
        titleRun3.setText(title3);

        Double tong = 0d;
        for (Billinfo billinfo: bill.getBillinfos()
             ) {
            XWPFParagraph paragraph1 = document.createParagraph();
            XWPFRun run = paragraph1.createRun();
            String a = "Món: "+ billinfo.getFood().getName()+"           S.l: " + billinfo.getCount()+"          T.Tiền: " + billinfo.getCount()*billinfo.getPrice();
            run.setText(a);
            tong = tong + billinfo.getCount()*billinfo.getPrice();
        }
        XWPFParagraph paragraph2 = document.createParagraph();
        XWPFRun run = paragraph2.createRun();
        run.setText("Tổng tiền:    "+ tong+" VND");

        XWPFParagraph titleGraph4 = document.createParagraph();
        titleGraph4.setAlignment(ParagraphAlignment.CENTER);
        String title4 = "Cảm ơn quý khách. Hẹn gặp lại";
        XWPFRun titleRun4 = titleGraph4.createRun();
        titleRun4.setText(title4);
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(new File("bill.docx"));
            document.write(out);
            out.close();
            document.close();
            File file = ResourceUtils.getFile("bill.docx");

            byte[] data = FileUtils.readFileToByteArray(file);
            // Thiết lập thông tin trả về
            response.setContentType("application/octet-stream");
            response.setHeader("Content-disposition", "attachment; filename=" + file.getName());
            response.setContentLength(data.length);
            InputStream inputStream = new BufferedInputStream(new ByteArrayInputStream(data));
            FileCopyUtils.copy(inputStream, response.getOutputStream());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }



    @PostMapping("/index-changeTable")
    @ResponseBody
    public StatusFunction changTableFood(ModelMap modelMap, @RequestParam String dinnertableid,
                                         @RequestParam Integer dinnertableidOLD){
        StatusFunction statusFunction = new StatusFunction();

        Tablefood tablefoodNew = tablefoodRepository.findByName(dinnertableid);
        Tablefood tablefoodOLD = tablefoodRepository.findById(dinnertableidOLD).get();

        try {
            tablefoodNew.setIdBill(tablefoodOLD.getIdBill());
            tablefoodOLD.setIdBill(0);
            tablefoodRepository.save(tablefoodNew);
            tablefoodRepository.save(tablefoodOLD);
            statusFunction.setBillId(tablefoodNew.getIdBill());
            statusFunction.setTableidNew(tablefoodNew.getId());
            statusFunction.setTableidOld(tablefoodOLD.getId());
            statusFunction.setStatus(true);
        }catch (Exception e){
            e.printStackTrace();
            statusFunction.setStatus(false);
        }

        return statusFunction;

    }


}
