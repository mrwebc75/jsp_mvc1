package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.BoardVO;

public class BoardMapperDAO implements BoardMapper {

  // 필요한 객체를 Factory에서 주입(DI)
  private SqlSession sqlSession;

  public BoardMapperDAO(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }

  private BoardMapper mp() {
    return sqlSession.getMapper(BoardMapper.class);
  }

  @Override
  public List<BoardVO> findAll() {
    return mp().findAll();
  }

}
