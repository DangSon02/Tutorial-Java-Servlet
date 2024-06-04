package crm.service;

import crm.model.Role;
import crm.repository.RoleRepository;


import java.util.List;

public class RoleService {
    private  RoleRepository repository = new RoleRepository();

    public List<Role> getRoles() {
        return  repository.getRoles();
    }

    public boolean deleteRoleById(int id) {
        return repository.deleteRoleById(id) > 0 ? true : false;
    }

    public boolean addRole(String roleName, String desc) {
        return repository.addRole(roleName,desc) > 0 ? true : false;
    }

}
