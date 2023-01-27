class User {
  String? id;
  int? alterId;

  User({this.id, this.alterId});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    alterId = json['alterId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['alterId'] = this.alterId;
    return data;
  }
}
