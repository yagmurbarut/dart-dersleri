void main(List<String> args){

// 3 elemanlı, String tipinde, sabit uzunlukta bir liste tanımlayın içerisine 3 adet telefon markası girin
//Konsol ekranına print ile çıktı alın (for döngüsüyle yazdırın)

List <String> list = List.filled(3, " ", growable: false);

list[0]="apple";
list[1]="samsung";
list[2]="xiaomi";

print(list);

for(var i in list){
  print(i);
}


// key tipi String, value tipi dynamic olan bir map oluşturun 
// bisikletimizin tipi(şehir,dağ vs) kaç vitesli olduğu gibi bilgileri girin çıktıyı for-in ile alın

Map <String, dynamic> mapim = {

  "dağ bisikleti - vites" : 5,
  "şehir bisikleti - vites" : 7,
  "sahil bisikleti - vites" : 5
};

for(var item in mapim.entries ){
  print("${item.key}: ${item.value}");
}



}