package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.BoardMapper;
import com.java.vo.BoardVo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;
	
	
	@Override
	public List<BoardVo> selectBoardAll() {
		List<BoardVo> list = boardMapper.selectBoardAll();
		
		return list;
	}

}
