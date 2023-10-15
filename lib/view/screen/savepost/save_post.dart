import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/util/dimensions.dart';
import 'package:task/view/screen/splash/splash.dart';
import '../../../util/images.dart';

class SavePost extends StatelessWidget {
  const SavePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(children: [
            IconButton(
                onPressed: () {
                  Get.to(()=>  SplashScreen());
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                )),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                )),
          ])),
      body: ListView(
        padding: const EdgeInsets.only(left: 16, right: 8, top: 16),
        children: [
          Text(
            "Saved",
            style: TextStyle(
                color: Colors.black,
                fontSize: Dimensions.fontSizeLarge,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: Dimensions.paddingSizeDefault,
          ),
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    Images.test,
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  )),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    Images.test,
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  )),
              const Spacer(),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    Images.test,
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  )),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    Images.test,
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  )),
            ],
          ),
         Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    Images.test,
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  )),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    Images.test,
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  )),
              const Spacer(),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    Images.test,
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  )),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    Images.test,
                    fit: BoxFit.cover,
                    height: 80,
                    width: 80,
                  )),
            ],
          ),
          const SizedBox(height: Dimensions.paddingSizeSmall,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("All Post", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500, fontSize: Dimensions.fontSizeDefault),)
,
              Text("Audio", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500,fontSize: Dimensions.fontSizeDefault),)

            ],
          ),


        ],
      ),
    );
  }
}
