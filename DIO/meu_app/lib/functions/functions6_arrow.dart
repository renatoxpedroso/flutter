
void main(List<String> arguments) {
  printDados("Minha soma é:");
  printDados(soma(1, 2).toString());
}

void printDados(String texto) => print(texto);

int soma(int numero1, int numero2) => numero1 + numero2;
