package coffeshop.com.DTO.reponse;

import coffeshop.com.entity.Billinfo;
import coffeshop.com.entity.Tablefood;
import lombok.Data;

import java.sql.Time;
import java.util.Date;
import java.util.List;

@Data
public class Bill2Reponse {
    private Integer id;
    private String date;
    private String checkIn;
    private String checkOut;
    private Boolean status;
    private String tablefood;
    private String employee;
    private List<Billinfo> billinfos;
}
