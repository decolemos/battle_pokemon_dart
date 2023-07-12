// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pokemon {
  String pokemon;
  int? ataque;
  int? defesa;
  int? vida;
  Pokemon({
    required this.pokemon,
    this.ataque,
    this.defesa,
    this.vida,
  });


  @override
  String toString() {
    return pokemon;
  }
}
