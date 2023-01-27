
class AppConfig {
  static const  ANG_PACKAGE = "com.v2ray.ang";
  static const DIR_ASSETS = "assets";

  // legacy
  static const ANG_CONFIG = "ang_config";
  static const PREF_INAPP_BUY_IS_PREMIUM = "pref_inapp_buy_is_premium";
  static const PREF_ROUTING_CUSTOM = "pref_routing_custom";

  // Preferences mapped to MMKV
  static const PREF_MODE = "pref_mode";
  static const PREF_SPEED_ENABLED = "pref_speed_enabled";
  static const PREF_SNIFFING_ENABLED = "pref_sniffing_enabled";
  static const PREF_PROXY_SHARING = "pref_proxy_sharing_enabled";
  static const PREF_LOCAL_DNS_ENABLED = "pref_local_dns_enabled";
  static const PREF_FAKE_DNS_ENABLED = "pref_fake_dns_enabled";
  static const PREF_VPN_DNS = "pref_vpn_dns";
  static const PREF_REMOTE_DNS = "pref_remote_dns";
  static const PREF_DOMESTIC_DNS = "pref_domestic_dns";
  static const PREF_LOCAL_DNS_PORT = "pref_local_dns_port";
  static const PREF_ALLOW_INSECURE = "pref_allow_insecure";
  static const PREF_SOCKS_PORT = "pref_socks_port";
  static const PREF_HTTP_PORT = "pref_http_port";
  static const PREF_LOGLEVEL = "pref_core_loglevel";
  static const PREF_LANGUAGE = "pref_language";
  static const PREF_PREFER_IPV6 = "pref_prefer_ipv6";
  static const PREF_ROUTING_DOMAIN_STRATEGY = "pref_routing_domain_strategy";
  static const PREF_ROUTING_MODE = "pref_routing_mode";
  static const PREF_V2RAY_ROUTING_AGENT = "pref_v2ray_routing_agent";
  static const PREF_V2RAY_ROUTING_DIRECT = "pref_v2ray_routing_direct";
  static const PREF_V2RAY_ROUTING_BLOCKED = "pref_v2ray_routing_blocked";
  static const PREF_PER_APP_PROXY = "pref_per_app_proxy";
  static const PREF_PER_APP_PROXY_SET = "pref_per_app_proxy_set";
  static const PREF_BYPASS_APPS = "pref_bypass_apps";
  static const PREF_CONFIRM_REMOVE = "pref_confirm_remove";

  static const HTTP_PROTOCOL = "http://";
  static const HTTPS_PROTOCOL = "https://";

  static const BROADCAST_ACTION_SERVICE = "com.v2ray.ang.action.service";
  static const BROADCAST_ACTION_ACTIVITY = "com.v2ray.ang.action.activity";
  static const BROADCAST_ACTION_WIDGET_CLICK = "com.v2ray.ang.action.widget.click";

  static const TASKER_EXTRA_BUNDLE = "com.twofortyfouram.locale.intent.extra.BUNDLE";
  static const TASKER_EXTRA_STRING_BLURB = "com.twofortyfouram.locale.intent.extra.BLURB";
  static const TASKER_EXTRA_BUNDLE_SWITCH = "tasker_extra_bundle_switch";
  static const TASKER_EXTRA_BUNDLE_GUID = "tasker_extra_bundle_guid";
  static const TASKER_DEFAULT_GUID = "Default";

  static const TAG_AGENT = "proxy";
  static const TAG_DIRECT = "direct";
  static const TAG_BLOCKED = "block";

  static const androidpackagenamelistUrl = "https://raw.githubusercontent.com/2dust/androidpackagenamelist/master/proxy.txt";
  static const v2rayCustomRoutingListUrl = "https://raw.githubusercontent.com/2dust/v2rayCustomRoutingList/master/";
  static const v2rayNGIssues = "https://github.com/2dust/v2rayNG/issues";
  static const v2rayNGWikiMode = "https://github.com/2dust/v2rayNG/wiki/Mode";
  static const promotionUrl = "aHR0cHM6Ly85LjIzNDQ1Ni54eXovYWJjLmh0bWw=";
  static const geoUrl = "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/";

  static const DNS_AGENT = "1.1.1.1";
  static const DNS_DIRECT = "223.5.5.5";

  static const PORT_LOCAL_DNS = "10853";
  static const PORT_SOCKS = "10808";
  static const PORT_HTTP = "10809";

  static const MSG_REGISTER_CLIENT = 1;
  static const MSG_STATE_RUNNING = 11;
  static const MSG_STATE_NOT_RUNNING = 12;
  static const MSG_UNREGISTER_CLIENT = 2;
  static const MSG_STATE_START = 3;
  static const MSG_STATE_START_SUCCESS = 31;
  static const MSG_STATE_START_FAILURE = 32;
  static const MSG_STATE_STOP = 4;
  static const MSG_STATE_STOP_SUCCESS = 41;
  static const MSG_STATE_RESTART = 5;
  static const MSG_MEASURE_DELAY = 6;
  static const MSG_MEASURE_DELAY_SUCCESS = 61;
  static const MSG_MEASURE_CONFIG = 7;
  static const MSG_MEASURE_CONFIG_SUCCESS = 71;
  static const MSG_MEASURE_CONFIG_CANCEL = 72;
}