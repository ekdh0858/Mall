package product;

public class Test {

	public static void main(String[] args) {
		// �� ��ü�� ���¸� �޸𸮿� �׸�����.
		
		// new �����ڷ� �ν��Ͻ��� ���� �� ���� Ŭ������ 
		// �޼��带 ȣ���ϴ� ���?
		
		Singleton no1 = Singleton.getInstance();
		
		Singleton no2 = Singleton.getInstance();
		no1.increase();
		
		no2.increase();
		no2.increase();
		
		no1.showInfo();
		no2.showInfo();
		
		// new�����ڸ� ����ϸ� �ν��Ͻ��� "����"�ǰ�
		// ���� �����ڸ� ����ؼ� ������ �ν��Ͻ��� �޸� �ּҸ�
		// ��ü(����)�� ����
		
//		NoSingleton no1 = new NoSingleton();
//		
//		NoSingleton no2 = new NoSingleton();
//		
//		no1.increase();
//		
//		no2.increase();
//		no2.increase();
//		
//		no1.increase();
//		no2.increase();
		
	}

}
