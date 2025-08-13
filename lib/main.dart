import 'package:flutter/material.dart';

void main() {
  //----------------------TIPO DE DADOS EM DART-------------------
  int idade = 36;
  double altura = 1.78;
  String nome = "Carlos";
  bool aprovado = true;
  var cidade = "São paulo"; // inferência de tipo
  dynamic qualquerCoisa = "Vila Jaguará";

  print(
    "Idade: $idade, Altura: $altura, Nome: $nome, Status: $aprovado, Cidade: "
    "$cidade, Bairro: $qualquerCoisa",
  );

  //------------Condicionais----------------------------

  if (idade > 18) {
    print("Maior de idade");
  } else {
    print("Menor de idade");
  }

  String resultado = (altura > 1.70) ? "Alto" : "Baixo";
  print("Classificação $resultado");

  switch (cidade) {
    case "São Paulo":
      print("Cidade grande");
      break;
    case "Ilhéus":
      print("Cidade pequena");
      break;
    default:
      print("Cidade desconhecida");
  }

  //--------------Laços de repetição----------------

  for (int i = 0; i < 3; i++) {
    print("Indice: $i");
  }

  int i = 0;
  while (i < 3) {
    print("Indice: $i");
    i++;
  }

  int j = 0;
  do {
    print("Indice: $j");
    j++;
  } while (j < 3);

  //---------------------Listas--------------

  List<String> frutas = ["Maçã", "Banana", "Laranja"];
  frutas.add("Uva");
  frutas.remove("Banana");
  frutas.sort();

  print("Frutas: $frutas");
  print("Primeira fruta ${frutas.first}");
  print("Última fruta ${frutas.last}");
  print("Tem Laranja ${frutas.contains("Laranja")}");

  frutas.forEach((fruta){
    print("Fruta: $fruta");
  });

  List<int> numeros = List.generate(5, (i)=> i + 1);
  int soma = numeros.fold(0, (acumulado, elemento)=> acumulado + elemento);
  print("A soma é: $soma");

  //--------------------- Mapas-------------------

  Map<String, dynamic> pessoa = {
    "nome": "José Carlos",
    "idade": 36,
    "altura": 1.78
  };

  pessoa["cidade"] = "São Paulo";
  pessoa.remove("altura");

  print("Pessoa: $pessoa");
  print("Chaves: ${pessoa.keys}");
  print("Valores: ${pessoa.values}");
  print("Nome: ${pessoa["nome"]}");

}
