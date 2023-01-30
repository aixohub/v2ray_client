
import 'User.dart';

class OutboundSetting {
  List<VnextItem>? vnext;

  /// <summary>
  ///
  /// </summary>
  List<ServersItem> servers;

  /// <summary>
  ///
  /// </summary>
  String domainStrategy;

  /// <summary>
  ///
  /// </summary>
  int? userLevel;

  OutboundSetting(
      this.vnext, this.servers, this.domainStrategy, this.userLevel);
}

class VnextItem {
  /// <summary>
  ///
  /// </summary>
  String address;

  /// <summary>
  ///
  /// </summary>
  int port;

  /// <summary>
  ///
  /// </summary>
  List<UsersItem> users;

  VnextItem(this.address, this.port, this.users);
}

class ServersItem {
  /// <summary>
  ///
  /// </summary>
  String email;

  /// <summary>
  ///
  /// </summary>
  String address;

  /// <summary>
  ///
  /// </summary>
  String method;

  /// <summary>
  ///
  /// </summary>
  bool ota;

  /// <summary>
  ///
  /// </summary>
  String password;

  /// <summary>
  ///
  /// </summary>
  int port;

  /// <summary>
  ///
  /// </summary>
  int level;

  /// <summary>
  /// trojan
  /// </summary>
  String flow;

  /// <summary>
  ///
  /// </summary>
  List<SocksUsersItem> users;

  ServersItem(this.email, this.address, this.method, this.ota, this.password,
      this.port, this.level, this.flow, this.users);
}

class SocksUsersItem {
  /// <summary>
  ///
  /// </summary>
  String user;

  /// <summary>
  ///
  /// </summary>
  String pass;

  /// <summary>
  ///
  /// </summary>
  int level;

  SocksUsersItem(this.user, this.pass, this.level);
}
