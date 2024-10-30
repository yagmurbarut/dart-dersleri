void main(List<String> args){

Map <String, int> ornekMap = {

"İstanbul" : 34,
"Elazığ" : 23,
"Niğde" : 51
};

print(ornekMap);

ornekMap["Malatya"]= 44;

for(var item in ornekMap.entries){
  print("örnek mapin keyi : ${item.key} ve değeri : ${item.value}");
}

}