import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../util/dimensions.dart';
import '../../../util/images.dart';
import '../../base/custom_button2.dart';
import '../../base/custom_button3.dart';
import '../video_player/video_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => Get.to( ()=>VideoScreen()));
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Images.test,
            fit: BoxFit.fill,
            width: Get.width,
            height: Get.height,
          ),
        ],
      ),
      bottomSheet: Container(
      height: 400,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Color(0xff020223),
      ),
      child: Column(
        children: [
          const SizedBox(height: Dimensions.paddingSizeExtraLarge,),
           CustomButton2(
          title: "Language", onTap: (){}, icon: Icons.language,),
          const SizedBox(height: Dimensions.paddingSizeExtraLarge,),

          CustomButton3(
            title: "Privacy Policy", onTap: (){}, icon: Icons.privacy_tip,),

          const SizedBox(height: Dimensions.paddingSizeExtraLarge,),
          CustomButton3(
            title: "Terms Of Use", onTap: (){}, icon: Icons.event_note_sharp,),

          const SizedBox(height: Dimensions.paddingSizeExtraLarge,),
          CustomButton3(
            title: "Help & Support", onTap: (){}, icon: Icons.help,
          )
        ],
      )
        ),
    );
  }
}
