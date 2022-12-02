package stream_api;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

/**
 * 
 * 
 * 중간 연산의 예
 * filter(), map()
 * 조건에 맞는 요소를 추출(filter) 
 * 해당하는 요소를 변형 하고싶다면 map을 사용한다.
 * 
 * 
 * 
 * */



public class MainTest2 {

	public static void main(String[] args) {

		List<Integer> list = new ArrayList();
		list.add(1);
		list.add(2);
		list.add(3);
		list.add(4);
		list.add(5);
		list.add(6);
		list.add(7);
//		byte[] data = new byte[26];
//		byte n = 65;
//		for(int i = 0; i < data.length; i++) {
//			data[i] = n;
//			n++;
//		}
		// 스트림 생성
		Stream<Integer> myStream = list.stream();
		myStream.forEach(s -> System.out.println("s : " + s));
		
		
//		myStream.filter(s -> (s >= 5)).forEach(n -> System.out.println(n)); // 5보다 크고나 같은거 보여줘 
		System.out.println(list);
	}

}
