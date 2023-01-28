import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// This is the type used by the popup menu below.
enum SampleItem { itemOne, itemTwo, itemThree }

class PopupMenuAdd extends StatefulWidget {
  const PopupMenuAdd({super.key});

  @override
  State<PopupMenuAdd> createState() => PopupMenuAddState();
}

class PopupMenuAddState extends State<PopupMenuAdd> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    var theme = Theme.of(context);

    return PopupMenuButton<SampleItem>(
      initialValue: selectedMenu,
      // Callback that sets the selected popup menu item.
      onSelected: (SampleItem item) {
        setState(() {
          selectedMenu = item;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemOne,
          child: Text(t.menu_item_import_config_qrcode),
          onTap: () {
            print(t.menu_item_import_config_qrcode);
          },
        ),
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemTwo,
          child: Text(t.menu_item_import_config_clipboard),
          onTap: () async {
            print(t.menu_item_import_config_clipboard);
            ClipboardData? cdata = await Clipboard.getData(Clipboard.kTextPlain);
            String? copiedtext = cdata?.text;
            print(copiedtext);
          },
        ),
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemThree,
          child: Text(t.menu_item_import_config_manually_vmess),
          onTap: () {
            print(t.menu_item_import_config_manually_vmess);
          },
        ),
      ],
    );
  }
}
