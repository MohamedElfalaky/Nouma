class PermiemModel {
  List<PermiemModelData> data;
  String message;
  int status;

  PermiemModel({this.data, this.message, this.status});

  PermiemModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <PermiemModelData>[];
      json['data'].forEach((v) {
        data.add(new PermiemModelData.fromJson(v));
      });
    }
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}

class PermiemModelData {
  int id;
  String name;
  String color;
  String badge;
  int price;
  String createdAt;
  String updatedAt;
  Null nameAr;
  String url;

  PermiemModelData(
      {this.id,
      this.name,
      this.color,
      this.badge,
      this.price,
      this.createdAt,
      this.updatedAt,
      this.nameAr,
      this.url});

  PermiemModelData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    color = json['color'];
    badge = json['badge'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    nameAr = json['name_ar'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['color'] = this.color;
    data['badge'] = this.badge;
    data['price'] = this.price;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['name_ar'] = this.nameAr;
    data['url'] = this.url;
    return data;
  }
}
