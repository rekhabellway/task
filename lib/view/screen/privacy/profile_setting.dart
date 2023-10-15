import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/util/dimensions.dart';

import 'privacy_screen.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff020223),
      appBar: AppBar(
          backgroundColor: const Color(0xff020223),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Profile Setting",
            style: TextStyle(
                color: Colors.white, fontSize: Dimensions.fontSizeExtraLarge),
          )),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "Account settings",
              style: TextStyle(
                  color: const Color(0xfff1cb0b), fontSize: Dimensions.fontSizeLarge),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xff02022a),

            ),
            child: Text(
              "Personal Account",
              style: TextStyle(
                  color: Colors.white, fontSize: Dimensions.fontSizeLarge),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xff02022a),

            ),
            child: Text(
              "Business Account",
              style: TextStyle(
                  color: Colors.white, fontSize: Dimensions.fontSizeLarge),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xff02022a),

            ),
            child: Text(
              "Share Profile",
              style: TextStyle(
                  color: Colors.white, fontSize: Dimensions.fontSizeLarge),
            ),
          ),
          InkWell(
            onTap: (){
              Get.to(()=> const PrivacyScreen());
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xff02022a),

              ),
              child: Text(
                "Privacy",
                style: TextStyle(
                    color: Colors.white, fontSize: Dimensions.fontSizeLarge),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Help & Support",
              style: TextStyle(
                  color: const Color(0xfff1cb0b), fontSize: Dimensions.fontSizeLarge),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xff02022a),

            ),
            child: Text(
              "Personal Account",
              style: TextStyle(
                  color: Colors.white, fontSize: Dimensions.fontSizeLarge),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xff02022a),

            ),
            child: Text(
              "Business Account",
              style: TextStyle(
                  color: Colors.white, fontSize: Dimensions.fontSizeLarge),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xff02022a),

            ),
            child: Text(
              "Share Profile",
              style: TextStyle(
                  color: Colors.white, fontSize: Dimensions.fontSizeLarge),
            ),
          ),
          ListTile(
            title: Text(
              "Log out",
              style: TextStyle(
                  color: const Color(0xfff1cb0b), fontSize: Dimensions.fontSizeLarge),
            ),
          ),
        ],
      ),
    );
  }
}
