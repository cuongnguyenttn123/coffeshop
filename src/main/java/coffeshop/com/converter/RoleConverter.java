package coffeshop.com.converter;

import coffeshop.com.DTO.reponse.RoleReponse;
import coffeshop.com.entity.Role;
import org.springframework.stereotype.Component;

@Component
public class RoleConverter {
    public RoleReponse converterEntity(Role role){
        RoleReponse roleReponse = new RoleReponse();
        roleReponse.setId(role.getId());
        roleReponse.setName(role.getName());
        return roleReponse;
    }
}
