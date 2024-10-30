import 'dart:io';
void main(List<String> args){

//Adınızı Dart'ta yazdıran bir program yazın.
print("yagmur");

//Merhaba, ben “John Doe” ve Merhaba, ben “John Doe” ifadelerini tek ve çift tırnak işaretiyle yazdıran bir program yazın 
String isim= "John Doe";
String cumle= ' Merhaba ben "John Doe"';
print(isim + cumle);

//Sabit türü int olarak bildirip değerini 7'ye ayarlayın 
var num=7;
print(num);

//Dart'ta basit faizi bulan bir program yazın.Formula= (p * t * r) / 100
/*P: Anapara (başlangıçta yatırılan para miktarı)
R: Faiz oranı (yüzde olarak)
T: Zaman (yıl olarak).*/
double para= 3500;
double faizOran= 2.33;
double zaman= 1.5;

print((para*faizOran*zaman)/100);

//Kullanıcı girdisini kullanarak bir sayının karesini yazdıran bir program yazın
print("lütfen karesi alınacak sayıyı giriniz: ");
int kareSayi;

kareSayi= int.parse(stdin.readLineSync()!);
print("girdiğiniz sayının karesi: " +(kareSayi*kareSayi).toString());

//Kullanıcı girdisini kullanarak bir kişinin adı ve soyadından tam adını yazdıran bir program yazın.
print("adınız: ");
String ad;
ad= stdin.readLineSync()!;
print("soyadınız: ");
String soyad;
soyad= stdin.readLineSync()!;

print("adınız- soyadınız: $ad $soyad");

//İki tam sayının bölümünü ve kalanını bulan bir program yazınız.

int sayi1=11;
int sayi2=3;

double bolum= (sayi1/ sayi2);
double kalan= (sayi1 % bolum);

print("kalan: "+kalan.toString());
print(" bolum: "+bolum.toString());

//İki sayıyı birbiriyle değiştiren bir program yazınız.

int a= 12;
int b= 4;

print("öncesi -> a:$a b:$b");

int temp= a;
a=b;
b= temp;
print("sonrası -> a:$a b:$b");

//String'deki tüm boşlukları silen bir Dart programı yazın

String metin= "yağmurlu havaları severim";

String yeniMetin= metin.replaceAll(" ", "");

print("boşlukları silinmeden önce: $metin \n  boşlukları silindikten sonra: $yeniMetin");

//String'i int'e dönüştüren bir Dart programı yazın.

String kilo= "50";
int kiloInt= int.parse(kilo);

print(kiloInt);

//Diyelim ki, sık sık arkadaşlarınızla restorana gidiyorsunuz ve hesabı bölüşmeniz gerekiyor. Hesabın bölünebilir miktarını hesaplayan bir program yazın.Formula= (total bill amount) / number of people
print("lütfen yemeğin toplam tutarını giriniz: ");
double tutar;
tutar= double.parse(stdin.readLineSync()!);
print("lütfen toplam kişi sayısını giriniz : ");
int kisiSayisi;
kisiSayisi= int.parse(stdin.readLineSync()!);
double kisiBasinaDusenMiktar= (tutar/kisiSayisi);
print("kişi başına düşen ödeme miktarı: $kisiBasinaDusenMiktar");


}