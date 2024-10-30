import 'dart:io';
void main(List<String> args){

//Sayının tek mi çift mi olduğunu kontrol eden bir dart programı yazın.

int sayi;
print("tek mi çift mi öğrenmek istediğiniz sayıyı giriniz : ");
sayi=int.parse(stdin.readLineSync()?? '');

if(sayi%2==0){
  print("$sayi çift sayıdır");
}
else{
  print("$sayi tek sayıdır");
}

//Bir karakterin sesli harf mi yoksa sessiz harf mi olduğunu kontrol eden bir dart programı yazınız.

List<String> sesliHarfler = ['A','a','E','e','O','o','U','u','I','i'];

print("bir karakter giriniz: ");

String karakter = stdin.readLineSync()!;

if(karakter.length==1){

  if(sesliHarfler.contains(karakter)){

    print("$karakter sesli harftir");
  }
  else{
    print("$karakter sessiz harftir");
  }
}
else{
  print("lütfen tek karakter giriniz!");
}

//Bir sayının pozitif, negatif veya sıfır olup olmadığını kontrol eden bir dart programı yazın.

print("lütfen bir sayı giriniz: ");

int say = int.parse(stdin.readLineSync()!);

if(say==0){
  print("$say sıfıra eşittir");
}
else if(say<0){
  print("sayı negatiftir");
}
else{
  print("sayı pozitiftir");
}

//Adınızı 100 kez yazdıran bir dart programı yazın.

String isim= "Yağmur";
int sayac=1;

while(sayac<101){
  print("$isim");
  sayac++;
}

//5'in çarpım tablosunu üreten bir dart programı yazın.

int numberr= 5;

for(int i=0 ; i<11 ; i++){
  
  print("$numberr * $i = ${numberr * i}");
}

//1-9 arası çarpım tablosunu üreten bir dart programı yazınız.

for(int k=0; k<10 ; k++){
  for(int m=0; m<10 ; m++){
    print("$k * $m = ${k*m}");
  }
}

//1'den 100'e kadar olan sayıları yazdıran ancak 41'i yazdırmayan bir dart programı yazın.

int x=0;
while(x<100){
x++;
if(x==41){
  continue;
}
print("$x");

}
}



