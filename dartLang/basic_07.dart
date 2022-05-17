main(){
 checkVersion();
 print('End process');
}

Future checkVersion() async{
  var version = await lookupVersion();
  print(version);
}

int lookupVersion(){
  return 12;
}