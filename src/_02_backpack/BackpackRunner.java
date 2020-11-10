package _02_backpack;

public class BackpackRunner {
	public static void main(String[] args) {
		new Backpack().packAndCheck();
		Backpack pack = new Backpack();
		Pencil pencil = new Pencil();
		Ruler ruler = new Ruler();
		Textbook book = new Textbook();
		pack.putInBackpack(pencil);
		pack.putInBackpack(ruler);
		pack.putInBackpack(book);
		pack.goToSchool();
	}
}
