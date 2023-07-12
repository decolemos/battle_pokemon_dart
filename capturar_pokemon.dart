import 'dart:io';
import 'gerar_pokemon_random.dart';
import 'pokemon.dart';

void capturarPokemon() {

  Pokemon pokemonRandom1 = gerarPokemonRandom(); 
  Pokemon pokemonRandom2 = gerarPokemonRandom(); 
  Pokemon pokemonRandom3 = gerarPokemonRandom();

  print("Capture um dos pokemon que apareceu");
  
  print("1 = ${pokemonRandom1.pokemon}");
  print("2 = ${pokemonRandom2.pokemon}");
  print("3 = ${pokemonRandom3.pokemon}");
  
  bool respondeuCorreto = false;

  while(!respondeuCorreto){
    stdout.write("Para capturar digite um dos numeros referente ao Pokemon que gostaria de capturar: ");
    String pokemonCapturado = stdin.readLineSync() ?? "";
    
    switch(pokemonCapturado) {
      case "1":
        pokemonCapturado = pokemonRandom1.pokemon;
        print("Pokebola vaaaaiiiiii.......");
        print("Você capturou um ${pokemonRandom1.pokemon}");
        respondeuCorreto = true;
        break;
      case "2":
        pokemonCapturado = pokemonRandom2.pokemon;
        print("Pokebola vaaaaiiiiii.......");
        print("Você capturou um ${pokemonRandom2.pokemon}");
        respondeuCorreto = true;
        break;
      case "3":
      pokemonCapturado = pokemonRandom3.pokemon;
        print("Pokebola vaaaaiiiiii.......");
        print("Você capturou um ${pokemonRandom3.pokemon}");
        respondeuCorreto = true;
        break;
      default:
        print("Pokemon não capturado");
      return;
    }
  }
}