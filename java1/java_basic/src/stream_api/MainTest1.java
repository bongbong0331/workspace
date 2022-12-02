package stream_api;

import java.util.Arrays;

/*
	 * 
	 * Stream API -> stream 과는 다른 개념입니다. ( 파일 IO, 소켓 XXX)
	 * java8 버전부터 추가된 유용한 클래스 입니다.
	 * 자바에서는 많은 양의 데이터를 저장하기 위해서 배열이나 컬렉션 프레임워크를 사용합니다.
	 * 코드의 길이가 너무 길어지고 가독성도 떨어지며 코드의 재사용이 거의 불가능하다.
	 * 반복자 (iterator) --> 스트림 API를 도입했다.
	 * 스트림 API를 이용하면 배열이나 컬렉션 등 모두 같은 방법으로 다룰 수 있게 됩니다. (ex . 람다)
	 * 
	 * 	*** 스트림 API의 동작 흐름 ***
	 * 스트림이라는 클래스가 생성됨
	 * 스트림의 중간 연산이 생긴다
	 * 스트림의 최종 연산의 흐름을 가진다.
	 * 
	 *  추가 개념
	 *  한번 생성한 스트림은 재사용이 불가능 하다. 단 한번만 사용 가능 하다.
	 *  스트림은 원본 데이터를 변경하지 않습니다 . . . 
	 *  스트림의 연산은 필터-맵 기반의 API를 사용하여 , 지연(Lazy) 연산을 통하여 성능을 최적화 합니다. 
	 * 
	 * 
	 * */


public class MainTest1 {

	public static void main(String[] args) {
		
		int[] arr = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
		int sumValue = Arrays.stream(arr).sum();
		long count = Arrays.stream(arr).count();
		System.out.println(sumValue);
		System.out.println(count);

	}

}
