import 'dart:math';
//Boş bir int parametresini kabul eden ve değer boş ise 0 döndüren, null birleştirme operatörü ?? kullanarak bir fonksiyon yazın

int kontrolEtVeSifirla(int? deger) {
  return deger ?? 0;
}

//Dart'ta rasgele 100 veya null döndüren generateRandom() adlı bir fonksiyon yazın . Ayrıca, fonksiyonun dönüş değerini null olamayacak status adlı bir değişkene atayın. Eğer generateRandom() fonksiyonu null döndürürse status'a varsayılan 0 değerini verin.

int? generateRandom() {
  Random random = Random();
  return random.nextBool() ? 100 : null;
}

void main() {
  
  print(kontrolEtVeSifirla(null)); 
  print(kontrolEtVeSifirla(5));    

  int? result = generateRandom();

  int status = result ?? 0;

  print("Status: $status");
}