import 'dart:io';
import 'capturar_pokemon.dart';
import 'lista_pokemon.dart';

void main(List<String> args) {

  buscaNomePokemon();
  
  print("BATALHA POKEMON");

  print("Deseja iniciar uma batalha pokemon em DART?");

  bool entrarNaBatalha = false;
  while(!entrarNaBatalha){
    stdout.write("Digite sim ou não para continuar: ");
    String resposta = stdin.readLineSync() ?? "";

    if(resposta == "sim"){
      print("Capture um pokemon para batalhar");
      entrarNaBatalha = true;
    } else if (resposta == "nao" || resposta == "não"){
      print("Fraco, saindo do game");
      return;
    } else {
      print("Desculpa não entendi");
    }
  }

  print("Procurando Pokemon no matinho...");
  print("Pokemon encontrados:");
  capturarPokemon();
}