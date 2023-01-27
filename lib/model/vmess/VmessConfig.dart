import 'Inbound.dart';
import 'outbound.dart';

class VmessConfig {
  List<Inbound>? inbounds;
  List<Outbound>? outbounds;

  VmessConfig({this.inbounds, this.outbounds});

  VmessConfig.fromJson(Map<String, dynamic> json) {
    if (json['inbounds'] != null) {
      inbounds = <Inbound>[];
      json['inbounds'].forEach((v) {
        inbounds!.add(new Inbound.fromJson(v));
      });
    }
    if (json['outbounds'] != null) {
      outbounds = <Outbound>[];
      json['outbounds'].forEach((v) {
        outbounds!.add(new Outbound.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.inbounds != null) {
      data['inbounds'] = this.inbounds!.map((v) => v.toJson()).toList();
    }
    if (this.outbounds != null) {
      data['outbounds'] = this.outbounds!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
