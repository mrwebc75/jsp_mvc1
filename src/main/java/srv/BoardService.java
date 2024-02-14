package srv;

import java.util.List;

import model.BoardDTO;

public interface BoardService {

  List<BoardDTO> findAll();
}
