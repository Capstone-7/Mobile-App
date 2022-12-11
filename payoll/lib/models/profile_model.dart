class ProfileModel {
  String? name;
  String? email;
  String? message;

  ProfileModel(
      {required this.name, required this.email, required this.message});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    name = json['data']['name'];
    email = json['data']['email'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data']['name'] = name;
    data['data']['email'] = email;
    data['message'] = message;
    return data;
  }
}
