package stream_api;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

public class MainTest3 {

	public static void main(String[] args) {
		
		List<String> sList = new ArrayList<>();
		sList.add("Tomas");
		sList.add("Edward");
		sList.add("Jack");
		
		Stream<String> stream = sList.stream();
		stream.forEach(s -> System.out.println(s + " "));
		sList.stream().sorted().forEach(s -> System.out.println(s + " "));
		sList.stream().map(s -> s.length()).forEach(n -> System.out.println(n));
		sList.stream().filter(s -> s.length() >= 5).forEach(s -> System.out.println(s));
	}

}
