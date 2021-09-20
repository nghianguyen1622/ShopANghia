package cdw_project.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;
import cdw_project.service.user.IProductService;

@Controller
public class ProductController extends BaseController{
	
	@Autowired 
	private IProductService _productService;
	
	@RequestMapping(value = "shop/chi-tiet-san-pham/{id}")
	public ModelAndView Index(@PathVariable int id) {
		
		_mvShare.addObject("product", _productService.GetProductByID(id));
		// sản phẩm mới nhất
		
		
		
		String idCategory = _productService.GetProductByID(id).getId_category();
		_mvShare.addObject("productByIDCategory", _productService.GetProductByIDCategory(Integer.parseInt(idCategory)));
		_mvShare.setViewName("user/products/product");
		
		_mvShare.addObject("sold", _productService.sold(id));
		
		
		
		// lấy dữ liệu Category
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", _homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", _homeService.GetDataCategorys2());
		// lay su lieu san pham
		
		return _mvShare;
	}
	
	


}
