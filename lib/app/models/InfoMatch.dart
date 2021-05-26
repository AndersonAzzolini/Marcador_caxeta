class MatchInfo {
  List<PlayersPoints> playersPoints;
  String currentStake;
  String currentRound;

  MatchInfo({this.playersPoints, this.currentStake, this.currentRound});

  MatchInfo.fromJson(Map<String, dynamic> json) {
    if (json['Players_points'] != null) {
      playersPoints = [];
      json['Players_points'].forEach((v) {
        playersPoints.add(new PlayersPoints.fromJson(v));
      });
    }
    currentStake = json['current_stake'];
    currentRound = json['current_round'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.playersPoints != null) {
      data['Players_points'] =
          this.playersPoints.map((v) => v.toJson()).toList();
    }
    data['current_stake'] = this.currentStake;
    data['current_round'] = this.currentRound;
    return data;
  }
}

class PlayersPoints {
  String nameMatch;
  String namePlayer;
  String points;

  PlayersPoints({this.nameMatch, this.namePlayer, this.points});

  PlayersPoints.fromJson(Map<String, dynamic> json) {
    nameMatch = json['name_match'];
    namePlayer = json['name_player'];
    points = json['points'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name_match'] = this.nameMatch;
    data['name_player'] = this.namePlayer;
    data['points'] = this.points;
    return data;
  }
}
