package cdw_project.controller.admin;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cdw_project.controller.BaseController;
import cdw_project.dto.PaginatesDTO;
import cdw_project.dto.ProductDTO;
import cdw_project.service.admin.impl.AdminPaginateServiceImpl;
import cdw_project.service.admin.impl.AdminProductServiceImpl;
import cdw_project.service.admin.impl.AmindCategoryServiceImpl;

@Controller
public class AdminProductController extends BaseController {
	@Autowired
	private AdminProductServiceImpl productService;
	@Autowired
	private AmindCategoryServiceImpl categoryService;
	@Autowired
	private AdminPaginateServiceImpl paginateService;
	private int totalProductsPage = 20;

	@RequestMapping(value = "adminproduct")
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("admin/product/product");
		int totalData = productService.GetDataProduct().size();
		PaginatesDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, 1);
		mv.addObject("paginateInfo", paginateInfo);
		mv.addObject("product", productService.GetDataProductsPaginate(paginateInfo.getStart(), totalProductsPage));
//		mv.addObject("product", productService.GetDataProduct());

		return mv;
	}

	@RequestMapping(value = "/adminproduct/{currentPage}")
	public ModelAndView Product(@PathVariable String currentPage) {
		ModelAndView mv = new ModelAndView("admin/product/product");
		int totalData = productService.GetDataProduct().size();
		PaginatesDTO paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage,
				Integer.parseInt(currentPage));
		mv.addObject("paginateInfo", paginateInfo);
		mv.addObject("product", productService.GetDataProductsPaginate(paginateInfo.getStart(), totalProductsPage));
		return mv;
	}

	@RequestMapping(value = "/detailproduct/{id}")
	public ModelAndView DetailProduct(@PathVariable int id, Model model) {
		ProductDTO productsDto = productService.DetailProduct(id);
		model.addAttribute("detailproduct", productsDto);
		_mvShare.setViewName("admin/product/detailproduct");
		return _mvShare;
	}

	@RequestMapping(value = "/deleteproduct/{id}")
	public String DeleteProduct(HttpServletRequest request, HttpSession session, @PathVariable int id) {
		session.setAttribute("product", productService.GetDataProduct());
		session.setAttribute("deleteproduct", productService.DeleteProduct(id));
		return "redirect:" + request.getHeader("Referer");
	}

	@RequestMapping(value = "addproduct", method = RequestMethod.GET)
	public ModelAndView AddProduct(@ModelAttribute("product") ProductDTO productsDto) {
		_mvShare.setViewName("admin/product/addproduct");
		_mvShare.addObject("admincategory", categoryService.GetDataCategorys());

		return _mvShare;
	}

	@RequestMapping(value = "addproduct", method = RequestMethod.POST)
	public String CreatedProduct(HttpServletRequest request, HttpSession session,
			@ModelAttribute("product") ProductDTO productsDto) {
		long millis = System.currentTimeMillis();
		Date date = new java.sql.Date(millis);
		productsDto.setCreate_at(date);
		productService.AddProduct(productsDto);

		return "redirect:adminproduct";

	}

	@RequestMapping("/eitdproduct/{id}")

	public String updateCustomer(@ModelAttribute("product") ProductDTO productsDto, @PathVariable int id, Model model) {
		productsDto = productService.DetailProduct(id);
		model.addAttribute("edit", categoryService.GetDataCategorys());
		model.addAttribute("producteidt", productsDto);
		return "admin/product/editproduct";
	}

	@RequestMapping("/updateproduct")
	public String doUpdateCustomer(HttpServletRequest request, @ModelAttribute("product") ProductDTO productsDto, Model model) {
		productService.EditProduct(productsDto);
		long millis = System.currentTimeMillis();
		Date date = new java.sql.Date(millis);
		productsDto.setUpdate_at(date);
		
		model.addAttribute("producteidt", productService.GetDataProduct());
		return "redirect:adminproduct";
	}

}
