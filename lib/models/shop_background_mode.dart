class BackgroundModel {
  List<BackgroundData> data;
  String message;
  int status;

  BackgroundModel({this.data, this.message, this.status});

  BackgroundModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <BackgroundData>[];
      json['data'].forEach((v) {
        data.add(new BackgroundData.fromJson(v));
      });
    }
    message = json['message'];
    status = json['status'];
  }
}

class BackgroundData {
  int id;
  String name;
  String type;
  String giftLink;
  int price;
  String createdAt;
  String updatedAt;
  String url;

  BackgroundData(
      {this.id,
      this.name,
      this.type,
      this.giftLink,
      this.price,
      this.createdAt,
      this.updatedAt,
      this.url});

  BackgroundData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    giftLink = json['gift_link'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    url = json['url'];
  }
}
