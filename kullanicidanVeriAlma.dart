
import 'dart:io';
void main(List<String> args){

int gelenSayi;
print("lütfen bir sayı giriniz:");

gelenSayi= int.parse(stdin.readLineSync()!);

if(gelenSayi>0){
  print("gelen sayı pozitiftir");
}
else if(gelenSayi==0){
  print("sayı 0'a eşittir");
}
else{
  print("sayı negatiftir");
}



}