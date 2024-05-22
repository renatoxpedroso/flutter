void main(List<String> arguments) {
  printName("Renato");
  printName("Xavier", sobrenome: "Pedroso");
}

void printName(String name, {String? sobrenome}) {
  print("My name is: $name");
  if (sobrenome != null) {
    print("My lastname is: $sobrenome");
  }
}