import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../constants.dart';
import '../../../model/server_model.dart';

class ServerScreen extends StatefulWidget {
  const ServerScreen({Key? key}) : super(key: key);

  @override
  State<ServerScreen> createState() => _ServerScreenState();
}

class _ServerScreenState extends State<ServerScreen> {
  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        iconTheme: const IconThemeData(color: secndryColor),
        actionsIconTheme: const IconThemeData(color: secndryColor),
        elevation: 0,
        title: Text(t.page_title_server_list,
            style: const TextStyle(color: secndryColor)),
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
            Expanded(
                child: ListView.builder(
              itemCount: flagList.length,
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListTile(
                      leading: Image.asset(
                        flagList[index].image,
                        height: 35,
                        width: 35,
                      ),
                      title: Text(
                        flagList[index].title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      trailing: const Icon(
                        Icons.signal_cellular_alt,
                        color: kPrimaryClr,
                      ),
                    )),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
