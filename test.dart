main() {
  String displayCharacter = 'Hello';
  String chracter;

  List str = [];
  str = displayCharacter.split('');

// print(str);
chracter = str[0];
chracter +=str[1];
// print(str[0]);
// print(chracter);
print(str.length);
  String str = "1234ABC"
String check = /^[0-9]+$/;
if (!check.test(str)) {
console.log("숫자만 입력 가능합니다.");
}


출처: https://gocoder.tistory.com/2341 [고코더 IT Express]
}
