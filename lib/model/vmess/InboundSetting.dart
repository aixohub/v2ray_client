
class InboundSetting {
  String? auth;
  bool? udp;

  InboundSetting({this.auth, this.udp});

  InboundSetting.fromJson(Map<String, dynamic> json) {
    auth = json['auth'];
    udp = json['udp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['auth'] = this.auth;
    data['udp'] = this.udp;
    return data;
  }
}
