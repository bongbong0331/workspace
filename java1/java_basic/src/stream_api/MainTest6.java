package stream_api;

import java.util.Arrays;
import java.util.Iterator;

public class MainTest6 {

	public static void main(String[] args) {

		// 이진탐색 수행시간이 완전 짧아짐 ! 
		// 조건은 오름차순으로 정렬 되어 있는 것 부터 시작 
		int [] numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};

		int target = 20;
		
		// 인덱스
		int left = 0;
		int right = numbers.length - 1;
		int mid = (left + right) / 2;
		System.out.println(mid);
		System.out.println(numbers[mid]);
		int temp = numbers[mid];
 		
		boolean find = false;
		int count = 1;
		
		//      0      <=       19
		while(left <= right) {
			if(target == temp) { // 수를 찾은 경우 
				find = true;
				break;
			}else if(target < temp) { // 찾으려는 수가 더 작은 경우
				right = mid - 1;
			}else {
				left = mid + 1;
			}
			// mid 인덱스 위치
			mid = (left + right) /2; 	// 4
			// temp 는 인덱스에 해당하는 값
			temp = numbers[mid]; 	// 5
			System.out.println("---------------");
			System.out.println("mid" + mid);
			System.out.println("temp" + temp);
			System.out.println("count" + count);
			count++;
			System.out.println("-----");
		}// end of while
		
		if(find == true) {
			mid++;
			System.out.println("찾는 수는 " + mid + "번째에 있습니다");
		}else {
			System.out.println("찾는 수가 없습니다.");
		}
		
		
//		나열 된 수중에 8을 찾으세요
		
	}

}
