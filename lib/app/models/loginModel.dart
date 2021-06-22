class LoginModel {
  bool status;
  String idUser;

  LoginModel({this.status, this.idUser});

  LoginModel.fromJson(Map<String, dynamic> json) {
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
