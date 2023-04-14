import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:yiyi_heike/controller/menu_controller.dart';
import 'package:yiyi_heike/pages/ddos.dart';
import '';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  final logger = Logger();
  final _menu = HeikeMenuController.to;

  void onNavigate(int? index) {
    switch (index) {
      case 0:
        Get.to(const DDoSPage(key: Key("<DDOS>")));
        logger.i("导航到阻斷服務攻擊页面");
        break;
      case 1:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: WillPopScope(
        onWillPop: () async => false,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _menu.menu.length,
            itemBuilder: (BuildContext context, int index) {
              var menu = _menu.menu[index];

              return InkWell(
                key: const Key("menu-button"),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(menu.icon!, color: Colors.red, size: 50),
                      Text(
                        menu.label!,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                onTap: () => onNavigate(menu.id),
              );
            },
          ),
        ),
      ),
    );
  }
}
