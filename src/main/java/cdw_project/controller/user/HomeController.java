package cdw_project.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;
import cdw_project.service.user.HomeServiceImpl;



@Controller
public class HomeController extends BaseController{
	@Autowired
	HomeServiceImpl homService;

	@RequestMapping(value = { "/", "shop" }, method = RequestMethod.GET)
	public ModelAndView Index() {
		
		// lấy dữ liệu slide
		_mvShare.addObject("slides", homService.GetDataSlide());
		// lấy dữ liệu Category
		_mvShare.addObject("categorys", homService.GetDataCategorys());
		_mvShare.addObject("categorys1", homService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homService.GetDataCategorys2());
		// lay su lieu san pham
		_mvShare.addObject("products", homService.GetDataProducts());
		_mvShare.addObject("productnew", homService.GetNewProduct());
		_mvShare.addObject("productallnew", homService.GetNewAllProduct());
		_mvShare.addObject("productbestseller", homService.GetBestsellerProduct());
		_mvShare.setViewName("user/index");
		
		return _mvShare;
	}

}
