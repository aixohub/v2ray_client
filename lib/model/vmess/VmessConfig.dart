import 'package:v2ray_client/model/vmess/routing.dart';

import 'Inbound.dart';
import 'Logcat.dart';
import 'outbound.dart';

class VmessConfig {
  Logcat? log;

  List<Inbound>? inbounds;

  List<Outbound>? outbounds;

  Routing? routing ;

  VmessConfig(this.log, this.inbounds, this.outbounds, this.routing);
}
