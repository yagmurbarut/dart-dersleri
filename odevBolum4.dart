import 'dart:io';

void main(List<String> args){

//İsimlerin bir listesini oluşturun ve listeyi kullanarak tüm isimleri yazdırın.

List <String> isimler= ['yagmur','sibel','sümeyye','fırat'];
/*for(i=0; i<isimler.length ; i++){
  print(isimler[i]);
}*/
for(String isim in isimler){
  print(isim);
}

//Bir meyve seti oluşturun ve döngüyü kullanarak tüm meyveleri yazdırın.
List <String> meyveler= ['elma','armut','çilek','şeftali'];
for(int k=0; k<meyveler.length ; k++){
  print(meyveler[k]);
}

//Kullanıcı girdisini kullanarak gider miktarlarını listeleyen ve toplamını yazdıran bir program oluşturun.
print("lütfen giderlerinizi sisteme giriniz : ");
print("ev kirası: ");
int evKirasi= int.parse(stdin.readLineSync()!);
print("\nelektrik faturası :");
int elektrik= int.parse(stdin.readLineSync()!);
print("\nSu faturası :");
int suFaturasi= int.parse(stdin.readLineSync()!);

int giderToplami= (evKirasi + elektrik + suFaturasi);
print("giderlerinizin toplamı : $giderToplami");

//Günler adlı string türünde boş bir liste oluşturun. 7 günün adlarını eklemek ve tüm günleri yazdırmak için add metodunu kullanın.
List <String> gunler= [];
gunler.add('pazartesi');
gunler.add('salı');
gunler.add('carsamba');
gunler.add('perşembe');
gunler.add('cuma');
gunler.add('cumartesi');
gunler.add('pazar');
print("haftanın günleri: ");
for(String gun in gunler){
  print(gun);
}

//Ad, adres, yaş, ülke anahtarları ile bir harita oluşturun ve değerleri ona kaydedin. Ülke adını diğer ülke ile güncelleyin ve tüm anahtarları ve değerleri yazdırın.
Map<String, dynamic> kisiBilgileri = {
    'ad': 'yagmur',
    'adres': 'elazığ',
    'yaş': 22,
    'ülke': 'Türkiye'
  };

  kisiBilgileri['ülke'] = 'Rusya';
  print("Kişi bilgileri:");
  kisiBilgileri.forEach((anahtar, deger) {
    print("$anahtar: $deger");
  });

//İsim, telefon anahtarları ile bir harita oluşturun ve bazı değerleri içine kaydedin. Uzunluğu 4 olan tüm anahtarları nerede bulacağınızı kullanın

Map<String, String> kisiBilgi = {
    'isim': 'sibel',
    'telefon': '1234567890'
  };

  print("Uzunluğu 4 olan anahtarlar:");
  kisiBilgi.forEach((key, value) {
    if (key.length == 4) {
      print(key);
    }
  });

  //Kullanıcının görev eklemesine, kaldırmasına ve görüntülemesine olanak tanıyan basit bir yapılacaklar uygulaması oluşturun.

  List<String> yapilacaklar = [];

  while (true) {
    print("\nYapılacaklar Listesi Uygulaması");
    print("1. Görev Ekle");
    print("2. Görev Kaldır");
    print("3. Tüm Görevleri Görüntüle");
    print("4. Çıkış");
    stdout.write("Bir seçenek girin: ");
    String? secim = stdin.readLineSync();

    if (secim == '1') {
      stdout.write("Eklemek istediğiniz görevi girin: ");
      String? gorev = stdin.readLineSync();
      if (gorev != null && gorev.isNotEmpty) {
        yapilacaklar.add(gorev);
        print("Görev eklendi: $gorev");
      } else {
        print("Geçersiz giriş. Görev eklenemedi.");
      }
    } else if (secim == '2') {
      if (yapilacaklar.isEmpty) {
        print("Yapılacaklar listesi boş.");
      } else {
        print("Görev kaldırmak için görev numarasını girin:");
        for (int i = 0; i < yapilacaklar.length; i++) {
          print("${i + 1}. ${yapilacaklar[i]}");
        }
        stdout.write("Görev numarasını girin: ");
        String? numaraStr = stdin.readLineSync();
        int? numara = int.tryParse(numaraStr!);
        if (numara != null && numara > 0 && numara <= yapilacaklar.length) {
          print("Görev kaldırıldı: ${yapilacaklar[numara - 1]}");
          yapilacaklar.removeAt(numara - 1);
        } else {
          print("Geçersiz görev numarası.");
        }
      }
    } else if (secim == '3') {
      if (yapilacaklar.isEmpty) {
        print("Yapılacaklar listesi boş.");
      } else {
        print("Yapılacaklar Listesi:");
        for (int i = 0; i < yapilacaklar.length; i++) {
          print("${i + 1}. ${yapilacaklar[i]}");
        }
      }
    } else if (secim == '4') {
      print("Uygulama sonlandırılıyor.");
      break;
    } else {
      print("Geçersiz seçenek. Lütfen 1-4 arasında bir sayı girin.");
    }
  }

}

