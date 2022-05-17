main() {
  // Function
  List<int> list1 = [1,3,5,7,9];

  List<int> list2 = [10,30,50,70,90];

// _ private _ 안쓰면 public

  _addList(List list){
  int sum = 0;
  for(int i in list){
    sum += i;
  }
  print("합계 : $sum");
  }

 _addList(list1);
 _addList(list2);

 int_addList2(List list){
  int sum = 0;
  for(int i in list){
    sum += i;
  }
  return sum;
  }

  int result = int_addList2(list2);
  print(result);

}//main