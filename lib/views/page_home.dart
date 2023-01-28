import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:v2ray_client/model/menu.dart';

import '../model/v2ray_config.dart';
import 'config_view/config_add.dart';
import 'config_view/config_list.dart';
import 'menu_view/pop_menu.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  PageHomeState createState() => PageHomeState();
}

class PageHomeState extends State<PageHome> {
  List<V2rayConfig> configList = [];

  List<MenuInfo> addMenuList = [];

  _toggleConfig(V2rayConfig config, bool isChecked) {
    setState(() {
      config.isSelected = isChecked;
    });
  }

  _addV2rayConfig() async {
    final configInfo = await showDialog<V2rayConfig>(
      context: context,
      builder: (BuildContext context) {
        return ConfigAdd();
      },
    );

    if (configInfo != null) {
      setState(() {
        configList.add(configInfo);
      });
    }
  }

  List<PopupMenuEntry<MenuInfo>> _popMenu(BuildContext context) {
    List<PopupMenuEntry<MenuInfo>> menuInfoList = [];
    for (var info in addMenuList) {
      var popupMenuItem = PopupMenuItem<MenuInfo>(
        value: info,
        onTap: () {
          print(info.menuPath.toString());
          Navigator.pushNamed(
            context,
            info.menuPath,
          );
        },
        child: Text(info.menuName),
      );
      menuInfoList.add(popupMenuItem);
    }
    return menuInfoList;
  }

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
    addMenuList = [];
    var d = MenuInfo(menuName: '删除', menuPath: '/pic_gen');
    var m = MenuInfo(menuName: '新增', menuPath: '/CopyAndPaste');
    addMenuList.add(m);
    addMenuList.add(d);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.pageHomeTitle),
        actions: [
          const PopupMenuAdd(),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print("444 search");
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {
              print("3333");
            },
          ),
        ],
      ),
      body: V2rayConfigList(
        configList: configList,
        onTodoToggle: _toggleConfig,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addV2rayConfig,
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                t.pageHomeDrawerHeader,
                style: theme.textTheme.headline3,
              ),
            ),
            ListTile(
              title: Text(
                t.pageHomeDrawerListTileSettings,
                style: theme.textTheme.subtitle1,
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/settings',
                );
              },
            ),
            ListTile(
              title: Text(
                t.pageHomeDrawerListTileLog,
                style: theme.textTheme.subtitle1,
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/PopupMenu',
                );
              },
            ),
            ListTile(
              title: Text(
                t.avatar_generator,
                style: theme.textTheme.subtitle1,
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/pic_gen',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
