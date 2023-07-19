import 'dart:io';

bool respostaValida() {

  bool respostaValida = false;

  while(!respostaValida){
    stdout.write("Digite sim ou não para continuar: ");
    String resposta = stdin.readLineSync()!.toLowerCase();

    if(resposta == "sim"){
      print("Capture um pokemon para batalhar");
      return true;
    } else if (resposta == "nao"){
      print("Fraco, saindo do game");
      return false;
    } else {
      print("Desculpa não entendi");
    }
  } // return entrarNaBatalha;
}