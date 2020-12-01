package _05_netflix;

public class Netflix {
public static void main(String[] args) {
	NetflixQueue queue = new NetflixQueue();
	Movie movie = new Movie("Bye", 5);
	queue.addMovie(movie);
	Movie elf = new Movie("Elf", 10);
	queue.addMovie(elf);
	Movie titanic = new Movie("Titanic", 2);
	queue.addMovie(titanic);
	Movie leap = new Movie("Leap", 8);
	queue.addMovie(leap);
	queue.sortMoviesByRating();
	String secondbestmovie = queue.getMovie(1).toString();
	System.out.println(secondbestmovie);
}
}
