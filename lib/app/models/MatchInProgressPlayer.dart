class MatchInProgressPlayer {
  String namePlayer;

  MatchInProgressPlayer({this.namePlayer});

  MatchInProgressPlayer.fromJson(Map<String, dynamic> json) {
    namePlayer = json['name_player'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name_player'] = this.namePlayer;
    return data;
  }
}
