import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:v2ray_client/views/home/splash_screen.dart';
import 'package:v2ray_client/views/menu_view/copy_from_clip.dart';
import 'package:v2ray_client/views/menu_view/pic_gen.dart';
import 'package:v2ray_client/views/menu_view/pop_menu.dart';

import 'model/locale.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocaleModel(),
      child: Consumer<LocaleModel>(
        builder: (context, localeModel, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Recipes',
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: localeModel.locale,
          routes: {
            '/': (context) => const SplashScreen(),
            '/pic_gen': (context) => const MyHomePage(),
            '/PopupMenu': (context) => const PopupMenuAdd(),
            '/CopyAndPaste': (context) => CopyAndPaste(),

          },
          initialRoute: '/',
        ),
      ),
    );
  }
}
