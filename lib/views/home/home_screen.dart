import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:v2ray_client/constants.dart';
import 'package:v2ray_client/views/settings/language/language_screen.dart';
import 'package:v2ray_client/views/settings/server/server_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    var t = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        iconTheme: const IconThemeData(color: secndryColor),
        actionsIconTheme: const IconThemeData(color: secndryColor),
        elevation: 0,
        title:
            Text(t.pageHomeTitle, style: const TextStyle(color: secndryColor)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  t.pageHomeDrawerHeader,
                  style: TextStyle(
                      color: kPrimaryClr,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LanguageScreen()));
              },
              leading: const Icon(Icons.translate, color: Colors.black),
              title: Text(t.settings_change_language,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ServerScreen()));
              },
              leading: const Icon(Icons.share, color: Colors.black),
              title: Text(t.settings_share_app,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ServerScreen()));
              },
              leading: const Icon(Icons.mail, color: Colors.black),
              title: Text(t.settings_about,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            Spacer(),
            Text("V1.0.0", style: TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: _size.height * 0.15,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isActive = !isActive;
                  });
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(150),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: kPrimaryClr,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: const BoxDecoration(
                        color: kWhiteClr,
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.power_settings_new,
                              size: 30,
                              color:
                                  isActive == true ? kPrimaryClr : Colors.grey,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              isActive == true ? "STOP" : "START",
                              style: TextStyle(
                                  color: isActive == true
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.11,
            ),
            // connection section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: isActive == true
                    ? kPrimaryClr
                    : kPrimaryClr.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  isActive == true
                      ? t.connection_connected
                      : t.connection_not_connected,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: secndryColor),
                ),
              ),
            ),
            // select location
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ServerScreen()));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhiteClr,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Select Location",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: secndryColor),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: secndryColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            // internet speed
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: kPrimaryClr.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_upward,
                      color: kPrimaryClr,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Upload",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: secndryColor),
                      ),
                      Text(
                        isActive == true ? "128kb" : "0.0kb",
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: kPrimaryClr.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_downward,
                      color: kPrimaryClr,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Download",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: secndryColor),
                      ),
                      Text(
                        isActive == true ? "128kb" : "0.0kb",
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
