import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/util/dimensions.dart';

import '../../../util/images.dart';
import '../search/search_screen.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Images.img4,
            fit: BoxFit.cover,
            height: Get.height,
            width: Get.width,
          ),
          Positioned(
            top: 15,
              left: 15,
              right: 15,
              child:
              Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                      color: const Color(0xfff1cb0b),
                      borderRadius: const BorderRadius.horizontal(left: Radius.circular(100), right: Radius.circular(100)),
                      border: Border.all(width: 2, color: Colors.black)
                  ),
                  child:  Text(
                    "1>0",

                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white, fontSize: Dimensions.fontSizeDefault, fontWeight: FontWeight.bold, ),
                  ),
                ),
              ),),
          Positioned(

            left: 15,
            right:10,
            bottom: 10,
            child:
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          hintText: 'Comment',
                          hintStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: Dimensions.paddingSizeSmall,),
                    const Icon(Icons.favorite_border_outlined, color: Colors.white,)
                    ,                    const SizedBox(width: Dimensions.paddingSizeDefault,),

                    const Icon(Icons.messenger_outline_sharp, color: Colors.white,)
,                    const SizedBox(width: Dimensions.paddingSizeDefault,),

                    IconButton(onPressed: () { Get.to(()=>  const SearchScreen()); }, icon: const Icon(Icons.share, color: Colors.white,),)
                    ,

                  ],
                ),


            )
        ],
      ),
    );
  }
}
