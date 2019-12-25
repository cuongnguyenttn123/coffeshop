package coffeshop.com.DTO.reponse;

import lombok.Data;

import javax.persistence.Column;
import java.sql.Date;

@Data
public class VoucherReponseDto {
    private Integer id;

    private String name;

    private String description;

    private Date datestart;

    private Date datestop;

    private Integer number;

    private Integer count;

    private Integer discount;

    private Double saleoff;
}
