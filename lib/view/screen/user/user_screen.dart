import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/data/modal/response/story_model.dart';
import 'package:task/util/dimensions.dart';
import 'package:task/view/base/custom_button.dart';
import '../privacy/profile_setting.dart';
import '../qr_code/qr_code_screen.dart';
import 'other_userscreen.dart';

class UserScreen extends StatefulWidget {
  final StoryModel model;
  const UserScreen({Key? key, required this.model}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      endDrawer: Drawer(
          backgroundColor: const Color(0xfff1cb0b),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Jane doe",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimensions.fontSizeExtraLarge,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: Text(
                  "Post",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimensions.fontSizeLarge,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: Text(
                  "Archive",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimensions.fontSizeLarge,
                      fontWeight: FontWeight.w500),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: ListTile(
                  title: Text(
                    "Your activity",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const QRScreen());
                },
                child: ListTile(
                  title: Text(
                    "QR code",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Discover People",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimensions.fontSizeLarge,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Spacer(),
              const Divider(
                height: 1,
                thickness: 1,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const ProfileSetting());
                },
                child: ListTile(
                  leading: const Icon(
                    Icons.settings,
                    size: 30,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xfff1cb0b)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          widget.model.image!,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Jane doe",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Following",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Followers",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Post",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
                title: "Edit Profile",
                onTap: () {
                  Get.to(() => const OtherUserScreen());
                }),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.dashboard_sharp,
                color: Color(0xfff1cb0b),
                size: 40,
              ),
              Icon(Icons.favorite_border_outlined,
                  color: Color(0xfff1cb0b), size: 40),
              Icon(
                Icons.lock_outline,
                color: Color(0xfff1cb0b),
                size: 40,
              )
            ],
          )
        ],
      ),
    );
  }
}
