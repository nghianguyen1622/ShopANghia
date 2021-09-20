package cdw_project.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;
import cdw_project.service.user.ProductServiceImpl;

@Controller
@ResponseBody
public class SearchController extends BaseController{
	@Autowired
	private ProductServiceImpl productService;
	
	@RequestMapping(value = "shop/timkiem")
	public ModelAndView Register(HttpServletRequest request,@RequestParam(name = "name", required = false) String text, HttpServletResponse res) {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", _homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", _homeService.GetDataCategorys2());
		
		_mvShare.setViewName("user/products/category");	
		request.setAttribute("name", text);
	
		request.setAttribute("productPaginate", productService.search(text));
		return _mvShare;
	}
	

}
