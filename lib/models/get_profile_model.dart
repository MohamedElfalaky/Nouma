import 'package:collection/collection.dart';

class GetProfileModel {
  int id;
  String name;
  String mobile;
  String password;
  dynamic rememberToken;
  String createdAt;
  String updatedAt;

  GetProfileModel({
    this.id,
    this.name,
    this.mobile,
    this.password,
    this.rememberToken,
    this.createdAt,
    this.updatedAt,
  });

  factory GetProfileModel.fromJson(Map<String, dynamic> json) {
    return GetProfileModel(
      id: json['id'] as int ?? "",
      name: json['name'] as String ?? "",
      mobile: json['mobile'] as String ?? "",
      password: json['password'] as String ?? "",
      rememberToken: json['remember_token'] as dynamic,
      createdAt: json['created_at'] as String ?? "",
      updatedAt: json['updated_at'] as String ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'mobile': mobile,
        'password': password,
        'remember_token': rememberToken,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      mobile.hashCode ^
      password.hashCode ^
      rememberToken.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
}
