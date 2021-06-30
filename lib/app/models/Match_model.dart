class Match_model {
  Partida partida;
  List<Jogadores> jogadores;

  Match_model({this.partida, this.jogadores});

  Match_model.fromJson(Map<String, dynamic> json) {
    partida =
        json['partida'] != null ? new Partida.fromJson(json['partida']) : null;
    if (json['jogadores'] != null) {
      jogadores = new List<Jogadores>();
      json['jogadores'].forEach((v) {
        jogadores.add(new Jogadores.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.partida != null) {
      data['partida'] = this.partida.toJson();
    }
    if (this.jogadores != null) {
      data['jogadores'] = this.jogadores.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Partida {
  String name;
  int currentStake;
  int currentRound;
  String dateCreate;
  String createdByUser;

  Partida(
      {this.name,
      this.currentStake,
      this.currentRound,
      this.dateCreate,
      this.createdByUser});

  Partida.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    currentStake = json['current_stake'];
    currentRound = json['current_round'];
    dateCreate = json['date_create'];
    createdByUser = json['created_by_user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['current_stake'] = this.currentStake;
    data['current_round'] = this.currentRound;
    data['date_create'] = this.dateCreate;
    data['created_by_user'] = this.createdByUser;
    return data;
  }
}

class Jogadores {
  String name;
  String points;
  int id;

  Jogadores({this.name, this.points, this.id});

  Jogadores.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    points = json['points'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['points'] = this.points;
    data['id'] = this.id;
    return data;
  }
}
