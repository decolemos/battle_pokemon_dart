import 'dart:io';

import 'package:batalha_pokemon/pokemon.dart';

Pokemon? capturarPokemon(List<Pokemon> listaPokemonRandom) {
  
  bool respostaValida = false;

  print("Pokemon encontrados: ");
  for(int index = 0; index < listaPokemonRandom.length; index++) {
    print("""${index + 1} - ${listaPokemonRandom[index].nome} 
      Vida: ${listaPokemonRandom[index].vida} 
      Ataque: ${listaPokemonRandom[index].ataque} 
      Defesa: ${listaPokemonRandom[index].defesa}""");
  }

  while(!respostaValida){
    stdout.write("Digite o numero do pokemon escolhido para capturar: ");
    String resposta = stdin.readLineSync()!;

    int escolha = int.tryParse(resposta) ?? 0;

    if(escolha <= 0 || escolha > listaPokemonRandom.length){
      print("Pokemon não capturado, tente novamente");
    } else {
      int index = escolha - 1;
      print("Pokebola vaaaaiiiiiiii...!!!");
      print("""Você capturou ${listaPokemonRandom[index].nome}, ele possui os seguintes status: 
        Vida: ${listaPokemonRandom[index].vida}
        Ataque: ${listaPokemonRandom[index].ataque} 
        Defesa: ${listaPokemonRandom[index].defesa}""");
      respostaValida = true;
      return listaPokemonRandom[index];
    }
  }
  return null;
}