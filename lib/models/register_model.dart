class RegisterModel {
  String message;
  User user;
  String accessToken;

  RegisterModel({this.message, this.user, this.accessToken});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['access_token'] = this.accessToken;
    return data;
  }
}

class User {
  String mobile;
  String name;
  int userId;
  String updatedAt;
  String createdAt;
  int id;

  User(
      {this.mobile,
      this.name,
      this.userId,
      this.updatedAt,
      this.createdAt,
      this.id});

  User.fromJson(Map<String, dynamic> json) {
    mobile = json['mobile'];
    name = json['name'];
    userId = json['user_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile'] = this.mobile;
    data['name'] = this.name;
    data['user_id'] = this.userId;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
