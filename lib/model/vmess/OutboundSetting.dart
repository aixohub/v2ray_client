import 'Vnext.dart';

class OutboundSetting {
  List<Vnext>? vnext;

  OutboundSetting({this.vnext});

  OutboundSetting.fromJson(Map<String, dynamic> json) {
    if (json['vnext'] != null) {
      vnext = <Vnext>[];
      json['vnext'].forEach((v) {
        vnext!.add(new Vnext.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.vnext != null) {
      data['vnext'] = this.vnext!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
