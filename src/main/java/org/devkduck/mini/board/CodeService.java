package org.devkduck.mini.board;

import java.util.List;


import org.devkduck.mini.board.mapper.CodeMapper;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;


/*
 * MVC 
 * Model : B/L 로직을 구현하는 부분(service + dao)  
 * View  : 출력(jsp) 
 * Controller : model와 view에 대한 제어를 담당 
 */
@Service

@RequiredArgsConstructor
public class CodeService {

      
	private final CodeMapper  codeMapper;

    public List<CodeVO> getList() {
    	return codeMapper.getList();
	}
}











