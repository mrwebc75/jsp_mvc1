package srv;

import java.util.Map;

import model.UserDTO;

public interface UserService {

  UserDTO getOne(Map<String, String> loginInfo);
}
