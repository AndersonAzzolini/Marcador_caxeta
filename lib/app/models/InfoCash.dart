class InfoCash {
  String currentStake;
  String currentRound;

  InfoCash({this.currentStake, this.currentRound});

  InfoCash.fromJson(Map<String, dynamic> json) {
    currentStake = json['current_stake'];
    currentRound = json['current_round'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_stake'] = this.currentStake;
    data['current_round'] = this.currentRound;
    return data;
  }
}
