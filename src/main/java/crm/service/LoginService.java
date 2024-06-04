package crm.service;

import crm.model.User;
import crm.repository.UserRepository;

import java.util.List;

public class LoginService {

    private UserRepository userRepository = new UserRepository();

    public boolean checkLogin (String userName, String passWord) {
        List<User> listUser = userRepository.getUserByUsernameAndPassword(userName,passWord);

        return listUser.size() > 0 ? true : false;
    }

}
