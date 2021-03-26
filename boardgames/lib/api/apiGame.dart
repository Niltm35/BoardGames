class ApiGame {
  int id;
  String nomGame;
  String descGame;
  String playerGame;
  String timeGame;
  String ageGame;
  int puntuacion;
  int idCat;
  int idPla;
  String photo;
  String video;

  static ApiGame fromJson(Map<String, dynamic> json) {
    ApiGame game = ApiGame();

    game.id = json['id'];
    game.nomGame = json['nomGame'];
    game.descGame = json['descGame'];
    game.playerGame = json['playerGame'];
    game.timeGame = json['timeGame'];
    game.ageGame = json['ageGame'];
    game.puntuacion = json['puntuacion'];
    game.idCat = json['idCat'];
    game.idPla = json['idPla'];
    game.photo = json['photo'];
    game.video = json['video'];

    return game;
  }
}
