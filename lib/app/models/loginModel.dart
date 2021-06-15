class loginModel {
  bool status;
  String idUser;

  loginModel({this.status, this.idUser});

  loginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    idUser = json['id_user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['id_user'] = this.idUser;
    return data;
  }
}
