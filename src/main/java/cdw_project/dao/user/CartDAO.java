package cdw_project.dao.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cdw_project.dao.BaseDAO;
import cdw_project.dto.CartDTO;
import cdw_project.dto.ProductDTO;
@Repository
public class CartDAO extends BaseDAO {

	@Autowired
	
	ProductDAO productDAO = new ProductDAO();

	// Thêm sản phẩm vào giỏ
	public HashMap<Long, CartDTO> AddCart(long id, HashMap<Long, CartDTO> cart) {

		ProductDTO product = productDAO.FindProductByID(id);
		// tạo giỏ hàng
		CartDTO itemCart = new CartDTO();
		if (product != null && cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanty(itemCart.getQuanty() + 1);
			itemCart.setTotalPrice(itemCart.getQuanty() * itemCart.getProduct().getGia());

		}else {
			itemCart.setProduct(product);
			itemCart.setQuanty(1);
			itemCart.setTotalPrice(product.getGia());
		}
		cart.put(id, itemCart);
		return cart;
	}

	// Sửa giỏ hàng
	public HashMap<Long, CartDTO> EditCart(long id, int quanty, HashMap<Long, CartDTO> cart) {
		if (cart == null) {
			return cart;
		}
		CartDTO itemCart = new CartDTO();
		// kiểm tra sản phẩm có trong giỏ hàng hay k
		if (cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanty(quanty);
			double totalPrice = quanty * itemCart.getProduct().getGia();
			itemCart.setTotalPrice(totalPrice);
		}
		cart.put(id, itemCart);
		return cart;
	}

	// Xóa giỏ hàng
	public HashMap<Long, CartDTO> DeleteCart(long id, HashMap<Long, CartDTO> cart) {
		if (cart == null) {
			return cart;
		}
		// nếu Cart tồn tại Id thì sẽ remove
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}

	// Tổng sản phẩm trong giỏ hàng
	public int TotalQuanty(HashMap<Long, CartDTO> cart) {
		int totalQuanty = 0;

		for(Map.Entry<Long, CartDTO> itemCart : cart.entrySet()) {
			totalQuanty += itemCart.getValue().getQuanty();
			
		}
		return totalQuanty;
	}

	// Tổng tiền trong giỏ hàng
	public double TotalPrice(HashMap<Long, CartDTO> cart) {
		int totalPrice = 0;

		for(Map.Entry<Long, CartDTO> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();
			
		}
		return totalPrice;
	}

}
