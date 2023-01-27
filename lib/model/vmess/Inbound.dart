import 'InboundSetting.dart';
import 'Sniffing.dart';

class Inbound {
  int? port;
  String? listen;
  String? protocol;
  Sniffing? sniffing;
  List<InboundSetting>? settings;

  Inbound(
      {this.port, this.listen, this.protocol, this.sniffing, this.settings});

  Inbound.fromJson(Map<String, dynamic> json) {
    port = json['port'];
    listen = json['listen'];
    protocol = json['protocol'];
    sniffing = json['sniffing'] != null
        ? new Sniffing.fromJson(json['sniffing'])
        : null;
    if (json['settings'] != null) {
      settings = <InboundSetting>[];
      json['settings'].forEach((v) {
        settings!.add(new InboundSetting.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['port'] = this.port;
    data['listen'] = this.listen;
    data['protocol'] = this.protocol;
    if (this.sniffing != null) {
      data['sniffing'] = this.sniffing!.toJson();
    }
    if (this.settings != null) {
      data['settings'] = this.settings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
