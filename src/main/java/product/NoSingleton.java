package product;

public class NoSingleton {
	
	private int id;
	
	public void increase() {
		id++;
	}
	
	public void showInfo() { 
		System.out.println("this ->"+this);
		System.out.println("id ->"+id);
	}
		
	
	
}
