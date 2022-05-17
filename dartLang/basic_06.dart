main(){
  ThreeKingdoms threekingdons = ThreeKingdoms();
  print(threekingdons.name);
  threekingdons.sayName();

  ThreeKingdoms2 threeKingdoms2 = ThreeKingdoms2("유비", "촉");
  threeKingdoms2.saySometiong();

} // main

class ThreeKingdoms{
  // Field
  String name = '유비';
  // Constructor

  sayName(){
    print("내 이름은 ${this.name} 입니다.");
  }

  // Method or Function
}

class ThreeKingdoms2{
  // Field
  late String name;
  String? nation;

  // Constructor
  ThreeKingdoms2(String name, String nation)
  : this.name = name,
  this.nation = nation;

  saySometiong(
  ){print("제 이름은 ${this.name}이고 조국은 ${this.nation} 입니다.");}
  
}