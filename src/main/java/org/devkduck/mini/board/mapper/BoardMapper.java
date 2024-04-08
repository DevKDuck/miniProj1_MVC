package org.devkduck.mini.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.devkduck.mini.board.BoardVO;
import org.devkduck.mini.board.PageRequestVO;

@Mapper
public interface BoardMapper {

	List<BoardVO> getList(PageRequestVO pageRequestVO);
	int  getTotalCount(PageRequestVO pageRequestVO);
	BoardVO view(BoardVO boardVO);
	int delete(BoardVO boardVO);
	void allDelete();
	void insert(BoardVO boardVO);

}
