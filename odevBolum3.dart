import 'dart:io';
import 'dart:math';
//Fonksiyon kullanarak kendi adınızı yazdıran bir Dart programı yazın.
void adYazdir(){
  print("yagmur");
}
//Fonksiyonu kullanarak aralıklar arasındaki çift sayıları yazdıran bir Dart programı yazın.
void ciftSayilariYazdir(int baslangic, int bitis) {
  for (int i = baslangic; i <= bitis; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

//Bir argüman olarak bir isim alan ve bir selamlama mesajı yazdıran greet adında bir fonksiyon yaratın. Örneğin, greet(“John”) “Merhaba, John” yazdırmalıdır.
void greet(String ad){
  print("merhaba $ad");
}

//Dart'ta rastgele şifre üreten bir program yazın.
String rastgeleSifreOlustur(int length){
  const String chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_+-=[]{}|;<>';
  Random random = Random();

  return List.generate(length, (index) => chars[random.nextInt(chars.length)]).join();

}

//Dart'ta bir dairenin alanını fonksiyon kullanarak bulan bir program yazın. Formül: pi * r * r

void daireAlanBulma(int r){
  print(pi*r*r);
}

//Belirli bir sayının kuvvetini hesaplamak için Dart'ta bir program yazın. Örneğin 5^3=125
void usluIslemler(){
int taban;
int us;
print("islem yapmak istediginiz taban sayısını girin :");
taban = int.parse(stdin.readLineSync()!);
print("islem yapmak istediginiz üs sayısını girin :");
us= int.parse(stdin.readLineSync()!);

int sonuc= pow(taban, us).toInt();
print("$taban ^ $us = $sonuc");
}

//Dart'ta maxNumber adında, üç sayıyı argüman olarak alan ve en büyük sayıyı döndüren bir fonksiyon yazın.
void maxNumber(){
int num1=13;
int num2= 63;
int num3= 19;

if(num1>num3 && num1>num2){
print("en büyük sayı: $num1");
}
else if(num2>num1 && num2>num3){
  print("en büyük sayı: $num2");
}
else{
  print("en büyük sayı: $num3");
}

}
//Dart'ta isEven adında, bir sayıyı argüman olarak alan ve sayı çiftse True, çift değilse False değerini döndüren bir fonksiyon yazın.

bool isEven(int numb){
  if(numb%2 == 0){
    return true;
  }
  else{
    return false;
  }
  }



void main(List<String> args){

adYazdir();
ciftSayilariYazdir(11, 35);
greet("John");

int passwordLength = 12;
String password = rastgeleSifreOlustur(passwordLength);
print("Rastgele oluşturulan şifre: $password");

daireAlanBulma(3);
usluIslemler();
maxNumber();
print(isEven(3));
print(isEven(6));

}