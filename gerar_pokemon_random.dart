import 'dart:math';
import 'lista_pokemon.dart';
import 'pokemon.dart';

Pokemon gerarPokemonRandom() {
  String pokemon = pokemons[Random().nextInt(pokemons.length)].pokemon;

  return Pokemon(pokemon: pokemon);
}