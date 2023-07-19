import 'dart:math';
import 'lista_pokemon.dart';
import 'pokemon.dart';

List<Pokemon> listaPokemonRandom = [];
late Pokemon pokemon;


Pokemon gerarPokemonRandom() {

  int ataqueRandom = Random().nextInt(30);
  int defesaRandom = Random().nextInt(30);
  int vida = 200;

  pokemon = Pokemon(
    nome: pokemons[Random().nextInt(pokemons.length)].nome, 
    ataque: ataqueRandom, 
    defesa: defesaRandom,
    vida: vida
  );
  return pokemon;
}

//pokemons[Random().nextInt(pokemons.length)].nome

List<Pokemon> gerarListaPokemon() {
  for(int index = 0; index <= 3; index++){
    listaPokemonRandom.add(gerarPokemonRandom());
  }
  return listaPokemonRandom;
}