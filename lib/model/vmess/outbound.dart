import 'OutboundSetting.dart';
import 'StreamSetting.dart';

class Outbound {
  String? protocol;
  OutboundSetting? settings;
  StreamSetting? streamSettings;

  /// <summary>
  /// 默认值agentout
  /// </summary>
  String? tag;

  /// <summary>
  ///
  /// </summary>
  Mux? mux;

  Outbound(
      this.protocol, this.settings, this.streamSettings, this.tag, this.mux);
}

class Mux {
  /// <summary>
  ///
  /// </summary>
  bool enabled;

  /// <summary>
  ///
  /// </summary>
  int concurrency;

  Mux(this.enabled, this.concurrency);
}
