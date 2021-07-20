class partidaPorId {
  List<Partida> partida;
  List<Jogadores> jogadores;

  partidaPorId({this.partida, this.jogadores});

  partidaPorId.fromJson(Map<String, dynamic> json) {
    if (json['partida'] != null) {
      partida = new List<Partida>();
      json['partida'].forEach((v) {
        partida.add(new Partida.fromJson(v));
      });
    }
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
      data['partida'] = this.partida.map((v) => v.toJson()).toList();
    }
    if (this.jogadores != null) {
      data['jogadores'] = this.jogadores.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Partida {
  String amountPlayers;
  String amountPurchase;
  String currentStake;
  String currentRound;
  String initialPoints;

  Partida(
      {this.amountPlayers,
      this.amountPurchase,
      this.currentStake,
      this.currentRound,
      this.initialPoints});

  Partida.fromJson(Map<String, dynamic> json) {
    amountPlayers = json['amount_players'];
    amountPurchase = json['amount_purchase'];
    currentStake = json['current_stake'];
    currentRound = json['current_round'];
    initialPoints = json['initial_points'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount_players'] = this.amountPlayers;
    data['amount_purchase'] = this.amountPurchase;
    data['current_stake'] = this.currentStake;
    data['current_round'] = this.currentRound;
    data['initial_points'] = this.initialPoints;
    return data;
  }
}

class Jogadores {
  String namePlayer;

  Jogadores({this.namePlayer});

  Jogadores.fromJson(Map<String, dynamic> json) {
    namePlayer = json['name_player'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name_player'] = this.namePlayer;
    return data;
  }
}
