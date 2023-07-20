// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pokemon {
  String nome;
  int? ataque;
  int? defesa;
  int? vida;
  Pokemon({
    required this.nome,
    this.ataque,
    this.defesa,
    this.vida,
  });


  @override
  String toString() {
    return "Pokemon: $nome, Ataque: $ataque, Defesa: $defesa, Vida: $vida";
  }
}

