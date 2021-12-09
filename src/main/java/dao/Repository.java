package dao;

import java.util.ArrayList;
import java.util.List;

import dto.Product;

public class Repository {
	private List<Product> listOfProducts;
	
	public Repository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Retina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1235", "LG PC ±×·¥", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processor");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		
		Product tablet = new Product("P1236", "Galaxy Tab 5", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(10000);
		tablet.setCondition("Old");
		
		listOfProducts= new ArrayList<>();
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	public List<Product> getAllproducts(){
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product product = null;
		
		for(Product nthProduct : listOfProducts) {
			String nthProductId = nthProduct.getProductId();
			
			if(nthProductId.equals(productId)) {
				product = nthProduct;
				break;
			}
		}
		return product;
	}
	
	public boolean addproduct(Product product) {
		listOfProducts.add(product);
		
		return true;
	}
}
