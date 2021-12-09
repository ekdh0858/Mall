package product;

import javax.servlet.http.HttpServletResponse;

import dao.Repository;
import dto.Product;

public class ProductService {
	
	public int addproduct(Product product) {
		Repository repos = new Repository();
		
		boolean result = repos.addproduct(product);
		if(result) {
			return HttpServletResponse.SC_CREATED;
		}else {
			return HttpServletResponse.SC_BAD_REQUEST;
		}		
	}
}
