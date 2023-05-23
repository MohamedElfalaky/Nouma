class RoomModel {
  String roomname;
  String roomDesc;
  String roomID;
  int userNow;

  RoomModel({
    this.roomname,
    this.roomDesc,
    this.roomID,
    this.userNow,
  });
  RoomModel.fromJson(Map<String, dynamic> json) {
    roomname = json['roomname'];
    roomDesc = json['roomDesc'];
    roomID = json['roomID'];
    userNow = json['userNow'];
  }
  Map<String, dynamic> toMap() {
    return {
      'name': roomname,
      'roomDesc': roomDesc,
      'roomID': roomID,
      'userNow': userNow
    };
  }
}
