void main(List<String> args){

// set yapısında listelerden farklı olarak tekrar eden elemanlar yalnızca bir kez yazdırılır
Set <dynamic> ornekSetim = {1,1,1,2,1,4,5,4,"yagmur",true};
print(ornekSetim);

Set <dynamic> setim2 = {20,20,4,55,"sibel"};
print(setim2);

//Listelerle birçok özelliği aynıdır
setim2.add(34);
print(setim2);

var sonSet = <dynamic>{};
sonSet= {...setim2, ...ornekSetim};
print(sonSet);
}