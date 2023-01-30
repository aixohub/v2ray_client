import 'User.dart';

class InboundSetting {
  String? auth;
  bool? udp;
  String ip;

  /// <summary>
  /// api 使用
  /// </summary>
  String address;

  /// <summary>
  ///
  /// </summary>
  List<UsersItem> clients;

  /// <summary>
  /// VLESS
  /// </summary>
  String? decryption;

  bool allowTransparent;

  List<AccountsItem> accounts;

  InboundSetting(this.auth, this.udp, this.ip, this.address, this.clients,
      this.decryption, this.allowTransparent, this.accounts);
}


class AccountsItem {
  /// <summary>
  ///
  /// </summary>
  String user;

  /// <summary>
  ///
  /// </summary>
  String pass;

  AccountsItem(this.user, this.pass);
}
