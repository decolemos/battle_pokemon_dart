import 'dart:math';
import 'lista_pokemon.dart';
import 'pokemon.dart';

Pokemon gerarPokemonRandom() {

  int min = 5;
  int max = 35;

  int ataqueRandom = Random().nextInt(max - min);
  int defesaRandom = Random().nextInt(max - min);
  int vida = 200;

  return Pokemon(
    nome: pokemons[Random().nextInt(pokemons.length)].nome, 
    ataque: ataqueRandom, 
    defesa: defesaRandom,
    vida: vida
  );
}

//pokemons[Random().nextInt(pokemons.length)].nome

List<Pokemon> gerarListaPokemon() {

  List<Pokemon> listaPokemonRandom = [];

  for(int index = 0; index < 3; index++){
    listaPokemonRandom.add(gerarPokemonRandom());
  }
  return listaPokemonRandom;
}