
import 'dart:io';
import 'dart:math';

void main(List<String> args) {

  var random = Random();
  var valorAtaque = random.nextInt(101);
  var valorDefesa = random.nextInt(101);
  var valorVida = random.nextInt(101);

  Map<String, String> pokemons = {
    "nome": "Bulbasaur",
    "tipo": "planta"
  };
  
  print("BATALHA POKEMON");

  print("Deseja iniciar uma batalha pokemon em DART?");
  stdout.write("Digite sim para iniciar ou não para sair: ");
  String entrarNaBatalha = stdin.readLineSync() ?? "";
  limparTela();

  if(entrarNaBatalha == "não" || entrarNaBatalha == "nao") {
    print("Ok, saindo do game");
  } else if(entrarNaBatalha == "sim"){
    print("Capture um pokemon para batalhar");
    print("Procurando Pokemon no matinho...");
    print("Pokemon encontrados:");
    print("1 - Charmander");
    print("2 - Bulbasaur");
    print("3 - Squirtle");
  }

  print("Capture um dos pokemon que apareceu");
  stdout.write("Para capturar um pokemon digite o numero corresponte a ele: ");
  String pokemonCapturado = stdin.readLineSync() ?? "";

  switch(pokemonCapturado) {
    case "1":
      print("Pokebola vaaaaiiiiii.......");
      print("Você capturou um Charmander");
      pokemonCapturado = "Charmander";
      break;
    case "2":
      print("Pokebola vaaaaiiiiii.......");
      print("Você capturou um Bulbasaur");
      pokemonCapturado = "Bulbasaur";
      break;
    case "3":
      print("Pokebola vaaaaiiiiii.......");
      print("Você capturou um Squirtle");
      pokemonCapturado = "Squirtle";
      break;
    default:
      print("Pokemon não capturado");
  }

  print("Os status do seu $pokemonCapturado é: ");
  print("HP = $valorVida");
  print("ATAQUE = $valorAtaque");
  print("DEFESA = $valorDefesa");
}

void limparTela() {
  if(Platform.isWindows) {
    Process.runSync("cls", [], runInShell: true);
  } else {
    Process.runSync("clear", [], runInShell: true);
  }
}