import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:yiyi_heike/controller/menu_controller.dart';
import 'package:yiyi_heike/pages/ddos.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  final logger = Logger();
  final _menu = HeikeMenuController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const SizedBox(),
        actions: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 10,
                top: 1,
                bottom: 1,
              ),
              child: Row(
                children: const [
                  Icon(Icons.lock, color: Colors.green, size: 20),
                  Text(
                    "AES-SM4",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            onTap: _menu.explainSM4AES,
          ),
        ],
      ),
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
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () => _menu.onNavigate(menu.id),
              );
            },
          ),
        ),
      ),
    );
  }
}
