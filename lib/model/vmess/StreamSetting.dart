import 'WsSetting.dart';

class StreamSetting {
  String? network;
  String? security;
  WsSetting? wsSettings;

  StreamSetting({this.network, this.security, this.wsSettings});

  StreamSetting.fromJson(Map<String, dynamic> json) {
    network = json['network'];
    security = json['security'];
    wsSettings = json['wsSettings'] != null
        ? new WsSetting.fromJson(json['wsSettings'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['network'] = this.network;
    data['security'] = this.security;
    if (this.wsSettings != null) {
      data['wsSettings'] = this.wsSettings!.toJson();
    }
    return data;
  }
}
