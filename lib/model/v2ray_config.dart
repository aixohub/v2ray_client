import 'package:v2ray_client/model/vmess/VmessConfig.dart';

class V2rayConfig {
  V2rayConfig(
      {required this.configCode,
      this.configName = 'default',
      required this.configDomain,
      this.isSelected = false});

  late String configCode;
  late String configName;
  late String configDomain;
  VmessConfig? configDetail;
  bool isSelected;
}
