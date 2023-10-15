import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import '../../../util/dimensions.dart';
import '../profile/paid_coin.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool status = false;
  bool value = false;
  bool value1 = false;
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
      ),
      body: ListView(
        padding: const EdgeInsets.only(left:16, right: 8),
        children: [
          Text(
            "Account Privacy",
            style: TextStyle(
                color: const Color(0xfff1cb0b),
                fontSize: Dimensions.fontSizeLarge),
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          Row(children: [
            Text(
              "Privacy Account",
              style: TextStyle(
                  color: Colors.white, fontSize: Dimensions.fontSizeLarge),
            ),
            const Spacer(),
            FlutterSwitch(
              width: 57.0,
              height: 30.0,
              valueFontSize: 15.0,
              toggleSize: 18.0,
              activeColor: const Color(0xfff1cb0b),
              value: status,
              borderRadius: 30.0,
              padding: 5.0,
              showOnOff: false,
              onToggle: (val) {
                setState(() {
                  status = val;
                });
              },
            ),
          ]),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          InkWell(
            onTap: (){
              Get.to(()=>  const CoinScreen());
            },
            child: Text(
              "Paid Ad option",
              style: TextStyle(
                  color: Colors.white, fontSize: Dimensions.fontSizeLarge),
            ),
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          Text(
            "Video & Pics",
            style: TextStyle(
                color: Colors.white, fontSize: Dimensions.fontSizeLarge),
          ),
          Row(
            children: [
              Text("Friends",    style: TextStyle(
                  color: Colors.white, fontSize: Dimensions.fontSizeSmall),),
              Checkbox(
                shape: const CircleBorder(),
                activeColor: const Color(0xfff1cb0b),
                side: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
                value: value,
                onChanged: (value) {
                  setState(() {
                    this.value = value!;
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Public",
                style: TextStyle(
                    color: Colors.white, fontSize: Dimensions.fontSizeSmall),
              ),
              Checkbox(
                shape: const CircleBorder(),
                activeColor: const Color(0xfff1cb0b),
                side: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
                value: value1,
                onChanged: (value) {
                  setState(() {
                    value1 = value!;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          Text(
            "Privacy",
            style: TextStyle(
                color: Colors.white, fontSize: Dimensions.fontSizeLarge),
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          Text(
            "Notification",
            style: TextStyle(
                color: const Color(0xfff1cb0b),
                fontSize: Dimensions.fontSizeLarge),
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          Text(
            "Comment",
            style: TextStyle(
                color:  Colors.white,
                fontSize: Dimensions.fontSizeLarge),
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          Row(
            children: [
              Text("On",    style: TextStyle(
                  color: Colors.white, fontSize: Dimensions.fontSizeSmall),),
              Checkbox(
                shape: const CircleBorder(),
                activeColor: const Color(0xfff1cb0b),
                side: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
                value: value,
                onChanged: (value) {
                  setState(() {
                    this.value = value!;
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Off",
                style: TextStyle(
                    color: Colors.white, fontSize: Dimensions.fontSizeSmall),
              ),
              Checkbox(
                shape: const CircleBorder(),
                activeColor: const Color(0xfff1cb0b),
                side: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
                value: value1,
                onChanged: (value) {
                  setState(() {
                    value1 = value!;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          Text(
            "Likes",
            style: TextStyle(
                color:  Colors.white,
                fontSize: Dimensions.fontSizeLarge),
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          Row(
            children: [
              Text("On",    style: TextStyle(
                  color: Colors.white, fontSize: Dimensions.fontSizeSmall),),
              Checkbox(
                shape: const CircleBorder(),
                activeColor: const Color(0xfff1cb0b),
                side: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
                value: value,
                onChanged: (value) {
                  setState(() {
                    this.value = value!;
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Off",
                style: TextStyle(
                    color: Colors.white, fontSize: Dimensions.fontSizeSmall),
              ),
              Checkbox(
                shape: const CircleBorder(),
                activeColor: const Color(0xfff1cb0b),
                side: const BorderSide(
                  color: Colors.white,
                  width: 1.5,
                ),
                value: value1,
                onChanged: (value) {
                  setState(() {
                    value1 = value!;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
