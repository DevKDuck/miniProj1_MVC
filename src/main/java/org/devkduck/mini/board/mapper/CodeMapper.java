package org.devkduck.mini.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import org.devkduck.mini.board.CodeVO;


@Mapper
public interface CodeMapper {

	List<CodeVO> getList();
}
