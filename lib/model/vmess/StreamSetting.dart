import 'WsSetting.dart';

class StreamSetting {
  String? network;
  String? security;

  /// <summary>
  /// sss
  /// </summary>
  TlsSettings tlsSettings;

  /// <summary>
  /// Tcp传输额外设置
  /// </summary>
  TcpSettings tcpSettings;

  /// <summary>
  /// Kcp传输额外设置
  /// </summary>
  KcpSettings kcpSettings;

  /// <summary>
  /// ws传输额外设置
  /// </summary>
  WsSetting? wsSettings;

  /// <summary>
  /// h2传输额外设置
  /// </summary>
  HttpSettings httpSettings;

  /// <summary>
  /// QUIC
  /// </summary>
  QuicSettings quicSettings;

  /// <summary>
  /// VLESS xtls
  /// </summary>
  TlsSettings xtlsSettings;

  /// <summary>
  /// grpc
  /// </summary>
  GrpcSettings grpcSettings;

  StreamSetting(
      this.network,
      this.security,
      this.wsSettings,
      this.tlsSettings,
      this.tcpSettings,
      this.kcpSettings,
      this.httpSettings,
      this.quicSettings,
      this.xtlsSettings,
      this.grpcSettings);
}

class TlsSettings {
  /// <summary>
  /// 是否允许不安全连接（用于客户端）
  /// </summary>
  bool allowInsecure;

  /// <summary>
  ///
  /// </summary>
  String serverName;

  /// <summary>
  ///
  /// </summary>
  List<String> alpn;

  /// <summary>
  /// "chrome" | "firefox" | "safari" | "randomized"
  /// </summary>
  String fingerprint;

  TlsSettings(this.allowInsecure, this.serverName, this.alpn, this.fingerprint);
}

class TcpSettings {
  /// <summary>
  /// 数据包头部伪装设置
  /// </summary>
  Header header;

  TcpSettings(this.header);
}

class Header {
  /// <summary>
  /// 伪装
  /// </summary>
  String type;

  /// <summary>
  /// 结构复杂，直接存起来
  /// </summary>
  Map request;

  /// <summary>
  /// 结构复杂，直接存起来
  /// </summary>
  Map response;

  Header(this.type, this.request, this.response);
}

class KcpSettings {
  /// <summary>
  ///
  /// </summary>
  int mtu;

  /// <summary>
  ///
  /// </summary>
  int tti;

  /// <summary>
  ///
  /// </summary>
  int uplinkCapacity;

  /// <summary>
  ///
  /// </summary>
  int downlinkCapacity;

  /// <summary>
  ///
  /// </summary>
  bool congestion;

  /// <summary>
  ///
  /// </summary>
  int readBufferSize;

  /// <summary>
  ///
  /// </summary>
  int writeBufferSize;

  /// <summary>
  ///
  /// </summary>
  Header header;

  /// <summary>
  ///
  /// </summary>
  String seed;

  KcpSettings(
      this.mtu,
      this.tti,
      this.uplinkCapacity,
      this.downlinkCapacity,
      this.congestion,
      this.readBufferSize,
      this.writeBufferSize,
      this.header,
      this.seed);
}

class HttpSettings {
  /// <summary>
  ///
  /// </summary>
  String path;

  /// <summary>
  ///
  /// </summary>
  List<String> host;

  HttpSettings(this.path, this.host);
}

class QuicSettings {
  /// <summary>
  ///
  /// </summary>
  String security;

  /// <summary>
  ///
  /// </summary>
  String key;

  /// <summary>
  ///
  /// </summary>
  Header header;

  QuicSettings(this.security, this.key, this.header);
}

class GrpcSettings {
  String serviceName;

  bool multiMode;

  int idle_timeout;

  int health_check_timeout;

  bool permit_without_stream;

  int initial_windows_size;

  GrpcSettings(
      this.serviceName,
      this.multiMode,
      this.idle_timeout,
      this.health_check_timeout,
      this.permit_without_stream,
      this.initial_windows_size);
}
