package cdw_project.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;
import cdw_project.dto.PaginatesDTO;
import cdw_project.service.user.CategoryServiceImpl;
import cdw_project.service.user.HomeServiceImpl;
import cdw_project.service.user.PaginateServiceImpl;

@Controller
public class CategoryController extends BaseController {
	
	@Autowired
	private HomeServiceImpl homService;
	@Autowired
	private CategoryServiceImpl categoryService;
	@Autowired
	private PaginateServiceImpl paginateService;
	
	private int totolProductPage = 15;
	
	
	@RequestMapping(value = "shop/san-pham/{id}")
	public ModelAndView Product(@PathVariable String id) {
		
		
		
		// lấy dư liệu sản phẩm theo Id của categorys và phân trang
		_mvShare.setViewName("user/products/category");
		
		
		
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDTO paginatesInfo = paginateService.GetInfoPaginates(totalData, totolProductPage, 1);
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginatesInfo);
		_mvShare.addObject("productPaginate", categoryService.GetDataProductsPaginate((Integer.parseInt(id)),paginatesInfo.getStart(), totolProductPage));
		
		// lấy dữ liệu Category
		_mvShare.addObject("categorys", homService.GetDataCategorys());
		_mvShare.addObject("categorys1", homService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homService.GetDataCategorys2());
		// lay su lieu san pham
		
		return _mvShare;
	}
	
	@RequestMapping(value = "shop/san-pham/{id}/{currentPage}")
	public ModelAndView Product(@PathVariable String id, @PathVariable String currentPage) {
		
		// lấy dư liệu sản phẩm theo Id của categorys và phân trang
		_mvShare.setViewName("user/products/category");
//		_mvShare.addObject("AllProductByID", categoryService.GetAllProductsByID(Integer.parseInt(id)));
		
		
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDTO paginatesInfo = paginateService.GetInfoPaginates(totalData, totolProductPage, Integer.parseInt(currentPage));
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginatesInfo);
		_mvShare.addObject("productPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id) ,paginatesInfo.getStart(), totolProductPage));
		
		// lấy dữ liệu Category
		_mvShare.addObject("categorys", homService.GetDataCategorys());
		_mvShare.addObject("categorys1", homService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homService.GetDataCategorys2());
		// lay su lieu san pham
		
		return _mvShare;
	}

}
