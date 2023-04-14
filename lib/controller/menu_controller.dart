import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yiyi_heike/model/menu.dart';
import 'package:yiyi_heike/pages/ddos.dart';

class HeikeMenuController extends GetxController {
  static HeikeMenuController get to => Get.put(HeikeMenuController());

  HeikeMenuController() {}

  var menu = [
    Menu(
      id: 0,
      key: const Key("佚佚黑客《阻斷服務攻擊》"),
      label: "阻斷服務攻擊",
      icon: Icons.cloud_off,
    ),
    Menu(
      id: 1,
      key: const Key("佚佚黑客《蓝牙实用》"),
      label: "蓝牙实用",
      icon: Icons.bluetooth_disabled_sharp,
    ),
    Menu(
      id: 2,
      key: const Key("佚佚黑客《近场通信》"),
      label: "近场通信",
      icon: Icons.nfc_sharp,
    ),
    Menu(
      id: 3,
      key: const Key("佚佚黑客《加密聊天室》"),
      label: "加密聊天室",
      icon: Icons.mark_chat_unread_sharp,
    ),
    Menu(
      id: 4,
      key: const Key("佚佚黑客《网络实用》"),
      label: "网络实用",
      icon: Icons.wifi_find_sharp,
    ),
  ];

  void onNavigate(int? index) {
    switch (index) {
      case 0:
        Get.to(() => const DDoSPage(key: Key("<DDOS>")));
        break;
      case 1:
        break;
    }
  }

  void explainSM4AES() {
    Get.showSnackbar(
      const GetSnackBar(
        icon: Icon(Icons.info, color: Colors.red, size: 30),
        duration: Duration(seconds: 3),
        message: "SM4是一种高安全性、高效率、易于使用和实现的分组对称加密算法，适用于保护各种类型的数据，"
            "如电子商务、支付、政务和通信数据等。是中国密码学家所设计的一种分组加密算法，"
            "它是中国国家商用密码算法的一部分。它的密钥长度为128位，被广泛应用于各个领域以保护"
            "数据的安全性和完整性。",
      ),
    );
  }
}
