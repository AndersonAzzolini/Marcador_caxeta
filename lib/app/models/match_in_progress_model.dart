class InProgressMatch {
  String name;
  String id;
  String amountPlayers;
  String dateCreate;

  InProgressMatch({this.name, this.id, this.amountPlayers, this.dateCreate});

  InProgressMatch.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    amountPlayers = json['amount_players'];
    dateCreate = json['date_create'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['amount_players'] = this.amountPlayers;
    data['date_create'] = this.dateCreate;
    return data;
  }
}