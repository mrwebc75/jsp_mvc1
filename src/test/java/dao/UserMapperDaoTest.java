package dao;

import static org.junit.Assert.assertNotNull;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;

import ioc.Factory;
import model.UserDTO;
import srv.UserService;

public class UserMapperDaoTest {

  UserService userSrv = Factory.INSTANCE.getUserSrv();

  @Test
  public void getOneTest() {

    Map<String, String> loginInfo = new HashMap<String, String>();
    loginInfo.put("userid", "duly3");
    loginInfo.put("password", "123457");

    UserDTO dto = userSrv.getOne(loginInfo);

    System.out.println("vo.toString() = " + dto.toString());

    assertNotNull(dto);

    System.out.println(dto.toString());
  }
}
