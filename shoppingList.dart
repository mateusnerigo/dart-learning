import "dart:io";

main() {
  criarListaDeCompras();
}

// cria uma lista de compras
void criarListaDeCompras() {
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
        // limpa a tela
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

void showInfo() {
  print("\nLISTA DE COMPRAS");
  print("\n\nDigite o nome dos produtos e tecle enter.");
  print("'listar' - visualizar todos os produtos.");
  print("'remover' - remove produtos.");
  print("Tecle enter em um novo produto vazio para finalizar.\n\n");
}

// lista produtos de uma lista
void listProducts(List<String> products) {
  for (int i = 0; i < products.length; i++) {
    print("Item $i - ${products[i]}");
  }
  print('\n');
}

// remove um produto da lista
void removeProducts(List<String> products) {

}
