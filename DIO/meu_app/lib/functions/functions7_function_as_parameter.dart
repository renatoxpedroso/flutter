void main(List<String> arguments) {
  print(executar(23, incrementar));
  print(executar(56, decrementar));
}

int executar(int numero, Function func) {
  return func(numero);
}

int incrementar(int numero) {
  return numero + 1;
}

int decrementar(int numero) {
  return numero - 1;
}