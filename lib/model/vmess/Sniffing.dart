class Sniffing {
  bool? enabled;
  List<String>? destOverride;

  Sniffing({this.enabled, this.destOverride});

  Sniffing.fromJson(Map<String, dynamic> json) {
    enabled = json['enabled'];
    destOverride = json['destOverride'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enabled'] = this.enabled;
    data['destOverride'] = this.destOverride;
    return data;
  }
}
