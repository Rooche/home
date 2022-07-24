package org.zerock.board.vo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@Autowired BoardMapper mapper;
	
	@RequestMapping("/boardSelectList")
	public String boardSlectList(Model model) {
		List<BoardVO> list = mapper.boardSelectList();
		model.addAttribute("list", list);
		return "boardSelectList";
	}
	
	@RequestMapping("/boardSelect")
	public String boardSlect(Model model, BoardVO vo) {
		vo = mapper.boardSelect(vo);
		model.addAttribute("vo", vo);
		return "boardSelect";
	}

	@RequestMapping("/boardInsert")
	public String boardInsert(BoardVO vo) {
		return "boardInsert";
	}
	
	   @RequestMapping("/insert")
	   public String insert(BoardVO vo) {
	      
		   mapper.boardInsert(vo);
	      
	      return "redirect:boardSelectList";
	   }
	   
	   @RequestMapping("/boardUpdate")
	   public String boardUpdate(BoardVO vo, Model model) {
	    model.addAttribute("vo", mapper.boardSelect(vo));  
	      return "boardUpdate";
	   }
	   
	   @RequestMapping("/update")
	   public String update(BoardVO vo) {
	      
	      mapper.boardUpdate(vo);
	      
	      return "redirect:boardSelectList";
	   }
	   
	   @RequestMapping("/delete")
	   public String delete(BoardVO vo) {
	      
	      mapper.boardDelete(vo);
	      
	      return "redirect:boardSelectList";
	   }
}
