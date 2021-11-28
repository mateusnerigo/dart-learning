import "dart:io";

main() {
  createShoppingList();
}

// creates a shopping cart list
void createShoppingList() {
  List<String> products = [];
  int index = 1;
  bool continueAdding = true;
  String productName;

  showInfo();

  while (continueAdding) {
    print(index);
    productName = stdin.readLineSync() ?? "";

    switch (productName) {
      case "" :
        continueAdding = false;
        print("FIM DA LISTA.");
        break;
      case "listar" :
        listProducts(products);
        break;
      case "remover" :
        removeProducts(products);
        break;
      default :
        // cleans the screen
        print("\x1B[2J\x1b[0;0H");

        showInfo();

        products.add(productName);
        index++;
        break;
    }
  }

  print("\n\nProdutos: ");
  print(products);
}

// show instructions message
void showInfo() {
  print("\nLISTA DE COMPRAS");
  print("\n\nDigite o nome dos produtos e tecle enter.");
  print("'listar' - visualizar todos os produtos.");
  print("'remover' - remove produtos.");
  print("Tecle enter em um novo produto vazio para finalizar.\n\n");
}

// lists products in list
void listProducts(List<String> products) {
  for (int i = 0; i < products.length; i++) {
    print("Item $i - ${products[i]}");
  }
  print('\n');
}

// removes a product in list
void removeProducts(List<String> products) {
  print("Digite o número do item que deseja remover:");
  listProducts(products);

  int item = int.parse(stdin.readLineSync() ?? "");
  products.removeAt(item);
  print("Item removido...");
}
