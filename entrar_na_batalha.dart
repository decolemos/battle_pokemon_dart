import 'dart:io';

void entrarNaBatalha() {
  bool entrarNaBatalha = false;

  while(!entrarNaBatalha){
    stdout.write("Digite sim ou não para continuar: ");
    String resposta = stdin.readLineSync() ?? "";

    if(resposta == "sim"){
      print("Capture um pokemon para batalhar");
      entrarNaBatalha = true;
    } else if (resposta == "nao"){
      print("Fraco, saindo do game");
      return;
    } else {
      print("Desculpa não entendi");
    }
  }
}