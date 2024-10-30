void main(List<String> args){

// add listeye ekleme yapar
List <int> liste = [2,14,9];
print(liste);
liste.add(87);
liste.add(41);
print(liste);
liste[0]=3;
print(liste);

List <int> liste3 = [10,5,23];

List <String> liste2 = ["yagmur", "fırat"];
print(liste2);
liste2.add("sibel");
print(liste2);

//bu yapı iki listeyi birleştirir ve sonlisteyi dynamic tanımladığımız için farklı veri tiplerinde elemanlar içeren listeler birleştirilebilir
List <dynamic> sonliste = [...liste2 ,...liste];
print(sonliste);
print("***************");

//bu yöntemle de yine listeler birleştirilir ama listelerin elemanlarının veri tiplerinin aynı olması gerekir (örneğin burada ikisi de int)
liste.addAll(liste3);
print(liste);

//remove silme işlemi yapar
liste.remove(87);
print(liste);

}