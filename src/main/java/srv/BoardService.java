package srv;

import java.util.List;

import model.BoardDTO;

public interface BoardService {

  List<BoardDTO> findAll();

  int save(BoardDTO dto);

  BoardDTO getOne(int seq);

  int increaseCnt(int seq);

  int update(BoardDTO dto);

  void delete(int seq);
}
