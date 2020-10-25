package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MapController {
	
	@RequestMapping(value = "/map.do",method = RequestMethod.GET)
	public String map() {
		return "map";
	}
	
	@RequestMapping(value = "/map2.do",method = RequestMethod.GET)
	public String map2() {
		return "map2";
	}
	
	@RequestMapping(value = "/map3.do",method = RequestMethod.GET)
	public String map3() {
		return "map3";
	}
}
