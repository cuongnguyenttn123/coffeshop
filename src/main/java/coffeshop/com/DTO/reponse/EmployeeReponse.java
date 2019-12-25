package coffeshop.com.DTO.reponse;

import coffeshop.com.entity.Role;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class EmployeeReponse {
    private Integer id;

    private String userName;

    private String passWord;

    private String name;

    private String email;

    private String address;

    private String avt;

    private String phone;

    List<RoleReponse> roles = new ArrayList<>();
}
