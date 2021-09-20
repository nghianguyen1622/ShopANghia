package cdw_project.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import cdw_project.controller.BaseController;
import cdw_project.dto.GooglePojo;
import cdw_project.entity.Users;
import cdw_project.service.user.AccountServiceImpl;
@Controller
public class LoginGoogleController extends BaseController{
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();

	public static String GOOGLE_CLIENT_ID = "606065012158-dsiab1edvr6lsu3bohqhihmulphk3nke.apps.googleusercontent.com";
	public static String GOOGLE_CLIENT_SECRET = "_GFrg0VeBgODdIUGYBNIac5a";
	public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/CDW_Project/shop/dangnhap-google";
	public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
	public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
	public static String GOOGLE_GRANT_TYPE = "authorization_code";
	

	@RequestMapping("/shop/dangnhap-google")
	public String loginGoogle(HttpSession session,HttpServletRequest request,@ModelAttribute("user") Users user) throws ClientProtocolException, IOException {
		String code = request.getParameter("code");
		if (code == null || code.isEmpty()) {
			_mvShare.setViewName( "redirect:/shop/dang-nhap");
		}

		 else {
				//Hệ thống lấy  chuỗi mã  token từ code của Google
				String accessToken = layToken(code);
				
			//Hệ thống kiểm tra mã Id của tài khoản người dùng đã tồn tại trong Dữ liệu của hệ thống chưa.
				
				user = layThongTinNguoiDung(accessToken);
		
				if (!accountService.findByEmail(user.getEmail())) {
						accountService.AddAccount(user);
					
				}
				else {
					_mvShare.setViewName( "redirect:/shop/dang-nhap");
				}

			
				
				session.setAttribute("LoginInfo", user);
				_mvShare.setViewName( "redirect:/shop/");
			}

		
		return "redirect:/shop/";
	}
	
	
	public String layToken(final String code) throws ClientProtocolException, IOException {
		String response = Request.Post(GOOGLE_LINK_GET_TOKEN)
				.bodyForm(Form.form().add("client_id", GOOGLE_CLIENT_ID)
						.add("client_secret", GOOGLE_CLIENT_SECRET)
						.add("redirect_uri", GOOGLE_REDIRECT_URI).add("code", code)
						.add("grant_type", GOOGLE_GRANT_TYPE).build())
				.execute().returnContent().asString();

		ObjectMapper mapper = new ObjectMapper();
		JsonNode node = mapper.readTree(response).get("access_token");
		return node.textValue();
	}

//	public GooglePojo getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
//		String link = GOOGLE_LINK_GET_USER_INFO + accessToken;
//		String response = Request.Get(link).execute().returnContent().asString();
//		ObjectMapper mapper = new ObjectMapper();
//		GooglePojo googlePojo = mapper.readValue(response, GooglePojo.class);
//		System.out.println(googlePojo);
//		return googlePojo;
//
//	}
//	
	
	// lấy thông tin người dùng
		public Users layThongTinNguoiDung(String maToken) throws ClientProtocolException, IOException {
			String link = GOOGLE_LINK_GET_USER_INFO + maToken;
			String response = Request.Get(link).execute().returnContent().asString();
//			ObjectMapper mapper = new ObjectMapper();
			GooglePojo user = new Gson().fromJson(response, GooglePojo.class);
			return new Users(user.getId(), user.getEmail().split("@")[0], user.getEmail().split("@")[0], user.getEmail(), "", "2");
		}

}
