//[id, name, ram] özelliklerine sahip bir Laptop sınıfı oluşturan ve bu sınıftan 3 nesne oluşturup tüm detayları yazdıran bir dart programı yazın

class Laptop {

  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  void showDetails() {
    print("ID: $id, Name: $name, RAM: ${ram}GB");
  }
}

//[id, name, price] özelliklerine sahip bir House sınıfı oluşturmak için bir dart programı yazın. Bunun bir kurucusunu oluşturun ve bundan 3 nesne oluşturun. Bunları listeye ekleyin ve tüm ayrıntıları yazdırın.

class House{

int id;
String name;
int price;

House(this.id , this.name, this.price);

void showDetail() {
  print("id: $id, name: $name ,fiyat: $price");
}


}

//Cinsiyet [erkek, kadın, diğerleri] için bir enum sınıfı oluşturan ve tüm değerleri yazdıran bir dart programı yazın.

enum Cinsiyet {
  erkek,
  kadin,
  digerleri
}

//[id, name, color] özelliklerine sahip bir Animal sınıfı oluşturmak için bir dart programı yazın. Cat adında başka bir sınıf oluşturun ve bunu Animal'dan genişletin. String'e sound adında yeni özellikler ekleyin. Bir Cat nesnesi oluşturun ve tüm detayları yazdırın.
class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color); 

  void showDetails() {
    print("ID: $id, Name: $name, Color: $color");
  }

}

class Cat extends Animal {
  String sound;
  Cat(int id, String name, String color, this.sound) : super(id, name, color);

  @override
  void showDetails() {
    super.showDetails();
    print("Sound: $sound");
  }
}

//Bottle adında bir arayüz oluşturun ve ona open() adında bir metot ekleyin. CokeBottle adında bir sınıf oluşturun ve Bottle'ı uygulayın ve “Coke bottle is opens” mesajını yazdırın . Bottle'a bir fabrika kurucusu ekleyin ve CokeBottle nesnesini döndürün . CokeBottle'ı fabrika kurucusunu kullanarak örnekleyin ve nesne üzerinde open()' ı çağırın.
abstract class Bottle {
  
  void open();

  
  factory Bottle() {
    return CokeBottle(); 
  }
}

class CokeBottle implements Bottle {

  @override
  void open() {
    print("Coke bottle is opened.");
  }
}


void main() {
  Laptop laptop1 = Laptop(1, "Dell XPS", 16);
  Laptop laptop2 = Laptop(2, "MacBook Pro", 32);
  Laptop laptop3 = Laptop(3, "HP Spectre", 8);

  laptop1.showDetails();
  laptop2.showDetails();
  laptop3.showDetails();

  House house1 = House(1213, "tinehouse", 300000);
  House house2 = House(2445, "prefabric", 200000);
  House house3 = House(6276, "home", 80000);

  house1.showDetail();
  house2.showDetail();
  house3.showDetail();

  print("Cinsiyet değerleri:");
  for (var cinsiyet in Cinsiyet.values) {
    print(cinsiyet);
  }

  Cat myCat = Cat(1, "Whiskers", "White", "Meow");

  myCat.showDetails();

  Bottle myBottle = Bottle();
  myBottle.open();

}