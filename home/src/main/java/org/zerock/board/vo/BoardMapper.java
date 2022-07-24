package org.zerock.board.vo;

import java.util.List;

public interface BoardMapper {
	public List<BoardVO> boardSelectList();
	   public BoardVO boardSelect(BoardVO vo);
	   public void boardInsert(BoardVO vo);
	   public void boardUpdate(BoardVO vo);
	   public void boardDelete(BoardVO vo);
}
