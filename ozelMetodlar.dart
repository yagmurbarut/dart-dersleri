void main(List<String> args){

String cumle = "okul kitabı";
//lenght
print(cumle.length);

//isEmpty
print(cumle.isEmpty);

//contains
print(cumle.contains('k')); //k harfi cumlede var mı diye bakar
print(cumle.contains('u',2)); //u harfi 2. indekste mi diye bakar 3. harftir ama 2. indekstir yani true

//replaceAll
String yeniCumle;
yeniCumle = cumle.replaceAll('k', 'y');  // çıktısı "oyul yitabı" olur k yerine y yazdırır
print(yeniCumle);

//parse metoduyla dönüştürme
String boy="1.72";
String kilo="91";

double boyDouble = double.parse(boy);
int kiloInt = int.parse(kilo);

double boyKiloIndexi= kiloInt/(boyDouble*boyDouble);
print(boyKiloIndexi);
}