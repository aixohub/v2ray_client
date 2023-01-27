import 'User.dart';

class Vnext {
  String? address;
  int? port;
  List<User>? users;

  Vnext({this.address, this.port, this.users});

  Vnext.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    port = json['port'];
    if (json['users'] != null) {
      users = <User>[];
      json['users'].forEach((v) {
        users!.add(new User.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['port'] = this.port;
    if (this.users != null) {
      data['users'] = this.users!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
