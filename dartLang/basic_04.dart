main() {
  int? num1 = null;
  print(num1);

  num1 ??= 8;

  print(num1);


  // 삼항 연산자

  bool isPublic = false;
  var visibility = isPublic  ? 'public' : 'private';

  print(visibility);

 int sum = 0;
 int sum2 = 0;

 for(int i=1; i <= 10; i++){
   sum += i;
 }
print(sum);
 List<int> numList = [1,2,3,4,5,6];
for(int i in numList){
  sum2+=i;
}
print(sum2);
}//main