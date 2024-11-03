import 'package:practice/practice_1.dart' as practice;
/*
문제
두 정수 A와 B가 주어졌을 때, A와 B를 비교하는 프로그램을 작성하시오.

입력
첫째 줄에 A와 B가 주어진다. A와 B는 공백 한 칸으로 구분되어져 있다.

출력
첫째 줄에 다음 세 가지 중 하나를 출력한다.

A가 B보다 큰 경우에는 '>'를 출력한다.
A가 B보다 작은 경우에는 '<'를 출력한다.
A와 B가 같은 경우에는 '=='를 출력한다.

제한
-10,000 ≤ A, B ≤ 10,000
*/


///1. 두수 비교하여 출력
String compareInt(int A, int B) {
  if (A > B) {
    return ">";
  } else if (A < B) {
    return "<";
  } else {
    return "==";
  }
}

// void main () {
//   final result = compareInt(1, 2);
//   print(result);
// }



///2. 제한사항, 입력 값 고려한 함수
String compareInt2(int A, int B) {
  if (A > B) {
    return ">";
  } else if (A < B) {
    return "<";
  } else {
    return "==";
  }
}

void main() {
  String? number = "100000 2";
  final splitNumber = number.split(" "); // [1, 2]
  List<int> numberList = splitNumber.map((int.parse)).toList(); //[1, 2]

 for (var num in numberList) {
   if (num < -10000 || num > 10000 || num < -10000 || num > 10000) {
     return; // 종료시켜야 둘 중에 하나라도 제한사항 통과 못하면 종료
   }
 }

   final result = compareInt2(numberList[0], numberList[1]);
   print(result);
 }



