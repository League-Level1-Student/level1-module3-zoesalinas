package _01_intro_to_static;

public class Athlete {
	    static int nextBibNumber;
	    static String raceLocation = "New York";
	    static String raceStartTime = "9.00am";

	    String name;
	    int speed;
	    int bibNumber;

	    Athlete (String name, int speed){
	        this.name = name;
	        this.speed = speed;
	    }

	    public static void main(String[] args) {
	        //create two athletes
	        //print their names, bibNumbers, and the location of their race. 
	    	Athlete bob = new Athlete("Bob", 5);
	    	System.out.println(bob.raceLocation = "1st place");
	    	System.out.println(bob.name = "Bob");
	    	System.out.println(bob.bibNumber = 88);
	    	Athlete joe = new Athlete("Joe", 4);
	    	System.out.println(joe.raceLocation = "2nd place");
	    	System.out.println(joe.name = "Joe");
	    	System.out.println(joe.bibNumber = 9);
	    }
}
