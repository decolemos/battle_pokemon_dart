import 'gerar_pokemon_random.dart';
import 'lista_pokemon.dart';
import 'pokemon.dart';

void main(List<String> args) {
  buscaNomePokemon();

  Pokemon pokemonRandom1 = gerarPokemonRandom(); 
  Pokemon pokemonRandom2 = gerarPokemonRandom(); 
  Pokemon pokemonRandom3 = gerarPokemonRandom(); 
  
  print(pokemonRandom1.pokemon);
  print(pokemonRandom2.pokemon);
  print(pokemonRandom3.pokemon);
}