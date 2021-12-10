package product;

public class Singleton {
	// �����ڸ� ���������Ͻ� �����Ϸ��� �⺻ �����ڸ� �߰����� ����
	// �������� ���������ڰ� private �̹Ƿ� �� Ŭ������ �ν��Ͻ��� 
	// �ƹ��������� ���� �� ����
	// �� Ŭ������ �ν��Ͻ��� ���� �� �ִ� ���� �� Ŭ���� �� ��
	
	private Singleton() { }
	
	private int id;
	
	// ��Ŭ�� ������ ������ ����� Ŭ������ �ν��Ͻ���
	// �ش� Ŭ������ ���� ���� ����
	private static Singleton obj;
	
	public static Singleton getInstance() {
		if(obj==null) {
			obj = new Singleton();
		}
		return obj;
	}
	
	public void increase() {
		id++;
	}
	public void showInfo() {
		System.out.println("this ->"+this);
		System.out.println("id ->"+id);
	}
	
	
}
