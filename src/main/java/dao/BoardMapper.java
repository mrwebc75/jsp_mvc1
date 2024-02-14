package dao;

import java.util.List;

import model.BoardVO;

public interface BoardMapper {

  List<BoardVO> findAll();

  int save(BoardVO vo);
}
