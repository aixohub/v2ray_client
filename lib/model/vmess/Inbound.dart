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


}
