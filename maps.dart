main() {
  // tipagem
  // first (<type,) = index name
  // second (type>) = values
  Map<String, dynamic> myMap = {
    "name" : "Mateus Neri",
    "age" : 26,
    "city" : "Lins",
    "state" : "São Paulo",
    "country" : "Brazil",
    "profession" : "Programmer"
  };

  print(myMap["name"]);

  myMap["age"] = 27;
  print(myMap);
}
