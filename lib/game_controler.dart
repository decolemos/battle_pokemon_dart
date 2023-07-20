import 'capturar_pokemon.dart';
import 'entrar_na_batalha.dart';
import 'gerar_lista_pokemon.dart';
import 'lista_pokemon.dart';
import 'pokemon.dart';

void start() {

  buscarPokemon();

  print("BATALHA POKEMON");
  print("Deseja iniciar uma batalha pokemon em DART?");

  if(!verificarSeDeveEntrarNaBatalha()) {
    return;
  }

    print("Procurando Pokemon no matinho...");

    List<Pokemon> pokemonsSelecionaveis = gerarListaPokemon();

    capturarPokemon(pokemonsSelecionaveis);
}