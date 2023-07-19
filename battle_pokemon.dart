import 'entrar_na_batalha.dart';
import 'gerar_lista_pokemon.dart';
import 'lista_pokemon.dart';

void main(List<String> args) {

  buscaNomePokemon();

  gerarPokemonRandom();
  
  print("BATALHA POKEMON");

  print("Deseja iniciar uma batalha pokemon em DART?");

  if(respostaValida()){
    print("Procurando Pokemon no matinho...");
    print("Pokemon encontrados:");
  }
}