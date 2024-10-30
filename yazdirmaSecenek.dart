void main(List<String> args){

String ad = "yagmur";
int yas=19;
double not= 92.13;
bool gectimi=true;
//birinci yazdırma şekli
print("öğrencinin adı : $ad, yaşı: $yas , notu : $not , gecti mi? $gectimi");

print("benim adım ${ad.toUpperCase()}");

//ikinci yazdırma şekli
print("adı: " +ad+ " yaşı: " +yas.toString()+ " not ortalaması :" +not.toString()+ " gecti mi? " +gectimi.toString());


}