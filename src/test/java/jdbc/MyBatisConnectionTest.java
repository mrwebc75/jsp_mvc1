package jdbc;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;

import myBatis.MyBatisManager;

public class MyBatisConnectionTest {
  SqlSessionFactory sqlSessionFactory = MyBatisManager.getSqlSessionFactory();
  SqlSession sqlSession = sqlSessionFactory.openSession();

  @Test
  public void sqlSessionTest() {
    // assertNotNull(sqlSession);
    String time = sqlSession.selectOne("dao.UserMapper.getTime");
    System.out.println("time = " + time);

    sqlSession.close();
  }
}
