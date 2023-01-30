import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:v2ray_client/model/locale.dart';

import '../../../constants.dart';
import '../../../model/Language.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    var selectedLocale = Localizations.localeOf(context).toString();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        iconTheme: const IconThemeData(color: secndryColor),
        actionsIconTheme: const IconThemeData(color: secndryColor),
        elevation: 0,
        title: Text(t.settings_language_set,
            style: const TextStyle(color: secndryColor)),
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: "search",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                )),
            const SizedBox(
              height: 15,
            ),
            Consumer<LocaleModel>(
              builder: (context, localeModel, child) => Expanded(
                  child: ListView.builder(
                itemCount: languageList.length,
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
                  child: InkWell(
                    onTap: () {
                      localeModel.set(Locale(languageList[index].code));
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          title: Text(
                            languageList[index].name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          trailing: selectedLocale == languageList[index].code
                              ? const Icon(
                                  Icons.check_box_outlined,
                                  color: kPrimaryClr,
                                )
                              : const Icon(Icons.check_box_outline_blank),
                        )),
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
