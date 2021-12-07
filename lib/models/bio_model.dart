import 'package:geoflutterfire/geoflutterfire.dart';

class Bio {
  int? sex;
  String? uuid;
  String? avatar;
  String? background;
  String? name;
  String? nickName;
  List<String>? hobbies;
  String? address;
  List<String>? socialUrl;
  GeoFirePoint? geoFirePoint;
  bool? isArgee;

  Bio(
      {required this.sex,
      required this.uuid,
      required this.avatar,
      required this.background,
      required this.nickName,
      required this.name,
      required this.hobbies,
      required this.address,
      required this.socialUrl,
      this.geoFirePoint});

  Bio.fromJson(Map<String, dynamic> json) {
    sex = json['sex'];
    uuid = json["uuid"];
    avatar = json['avatar'];
    background = json['background'];
    nickName = json['nickName'];
    // hobbies = json['hobbies'] ?? json['hobbies'].cast<String>();
    if (json['hobbies'] != null) {
      hobbies = <String>[];
      json['hobbies'].forEach((v) {
        hobbies!.add(v);
      });
    }

    name = json['name'];
    address = json['address'];
    // socialUrl = json['social_url'].cast<String>();

    if (json['social_url'] != null) {
      socialUrl = <String>[];
      json['social_url'].forEach((v) {
        socialUrl!.add(v);
      });
    }

    if (json['position'] != null) {
      geoFirePoint = GeoFirePoint(json['position']['geopoint'].latitude,
          json['position']['geopoint'].longitude);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sex'] = sex;
    data['avatar'] = avatar;
    data['background'] = background;
    data['name'] = name;
    data['address'] = address;
    data['social_url'] = socialUrl;
    if (geoFirePoint != null) {
      data['position'] = geoFirePoint!.data;
    }
    data["uuid"] = uuid;
    return data;
  }
}
