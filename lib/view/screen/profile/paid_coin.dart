import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/util/dimensions.dart';
import 'package:task/view/screen/video_player/video_screen.dart';
import '../../../util/images.dart';

class CoinScreen extends StatefulWidget {
  const CoinScreen({Key? key}) : super(key: key);

  @override
  State<CoinScreen> createState() => _CoinScreenState();
}

class _CoinScreenState extends State<CoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    Images.test,
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: Dimensions.paddingSizeDefault,
              ),
              Text(
                "JHONE DEO",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: Dimensions.fontSizeLarge,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "jhonedeo23@gmail.com",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: Dimensions.fontSizeLarge,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          ListTile(
            title: Text(
              "Buy Coin",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: Dimensions.fontSizeLarge,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.currency_exchange,
              color: Color(0xfff1cb0b),
            ),
            title: Text(
              "65 coins",
              style: TextStyle(
                  color: Colors.black, fontSize: Dimensions.fontSizeLarge),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xfff1cb0b),
                  borderRadius: BorderRadius.circular(5)),
              child: const Text(
                "US 0.99",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.currency_exchange,
              color: Color(0xfff1cb0b),
            ),
            title: Text(
              "115 coins",
              style: TextStyle(
                  color: Colors.black, fontSize: Dimensions.fontSizeLarge),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xfff1cb0b),
                  borderRadius: BorderRadius.circular(5)),
              child: const Text(
                "US 6.99",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.currency_exchange,
              color: Color(0xfff1cb0b),
            ),
            title: Text(
              "400 coins",
              style: TextStyle(
                  color: Colors.black, fontSize: Dimensions.fontSizeLarge),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xfff1cb0b),
                  borderRadius: BorderRadius.circular(5)),
              child: const Text(
                "US 0.15",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.currency_exchange,
              color: Color(0xfff1cb0b),
            ),
            title: Text(
              "1100 coins",
              style: TextStyle(
                  color: Colors.black, fontSize: Dimensions.fontSizeLarge),
            ),
            trailing: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xfff1cb0b),
                  borderRadius: BorderRadius.circular(5)),
              child: const Text(
                "US 0.30",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          ListTile(
            title: Text("Buy Gift", style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: Dimensions.fontSizeLarge
            ),),
            trailing: const Icon(Icons.card_giftcard, color: Color(0xfff1cb0b),size: 30,),
          )
        ],
      ),

      bottomSheet:
      InkWell(
        onTap: (){
          Get.to(()=> VideoScreen());
        },
        child: Container(
          height:60,
          width:Get.width,
          decoration: const BoxDecoration(
              color: Color(0xfff1cb0b),
             ),
          child: Center(
            child: Text(
              "Recharge",
              style: TextStyle(
                color: const Color(0xff020223),
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.fontSizeLarge,
              ),
            ),
          ),
        ),
      ),


    );
  }
}
