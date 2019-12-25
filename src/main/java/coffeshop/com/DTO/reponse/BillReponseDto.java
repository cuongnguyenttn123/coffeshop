package coffeshop.com.DTO.reponse;

import lombok.Data;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.*;

@Data
public class BillReponseDto {
    private Integer id;

    private Date dateCheckIn;

    private Date dateCheckOut;

    private TableFoodReponseDto tablefood;

    private EmployeeReponse account;

    private VoucherReponseDto voucher;

    private Integer idStatus;

    private Integer status;

    List<BillinfoReponseDto> billinfos = new ArrayList<>();
}
