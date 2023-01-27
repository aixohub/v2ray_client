import 'OutboundSetting.dart';
import 'StreamSetting.dart';

class Outbound {
  String? protocol;
  OutboundSetting? settings;
  StreamSetting? streamSettings;

  Outbound({this.protocol, this.settings, this.streamSettings});

  Outbound.fromJson(Map<String, dynamic> json) {
    protocol = json['protocol'];
    settings = json['settings'] != null
        ? new OutboundSetting.fromJson(json['settings'])
        : null;
    streamSettings = json['streamSettings'] != null
        ? new StreamSetting.fromJson(json['streamSettings'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['protocol'] = this.protocol;
    if (this.settings != null) {
      data['settings'] = this.settings!.toJson();
    }
    if (this.streamSettings != null) {
      data['streamSettings'] = this.streamSettings!.toJson();
    }
    return data;
  }
}
