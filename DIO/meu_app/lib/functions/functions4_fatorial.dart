void main(List<String> arguments) {
  var fatorialCalculado = fatorial(12);
  print(fatorialCalculado);
}

int fatorial(int numero) {
  if (numero == 1) {
    return 1;
  }
  return numero * fatorial(numero - 1);
}