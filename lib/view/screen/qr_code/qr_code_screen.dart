import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:task/util/dimensions.dart';
import 'package:task/view/screen/share/share_screen.dart';

class QRScreen extends StatelessWidget {
  const QRScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1cb0b),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xfff1cb0b),
        elevation: 0,
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.grey[600],
                )),
            const Spacer(),
            IconButton(
                onPressed: () {
                  Get.to(()=> const ShareScreen());
                },
                icon: const Icon(
                  Icons.share,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xfff1cb0b), Color(0xfff3c654)])),

          child: Column(
            children: [
              Text(
                "JHONE DEO",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.fontSizeLarge),
              ),
              const Spacer(),
              QrImageView(
                data: '1234567890',
                version: QrVersions.auto,
                size: 250.0,
              ),
              const Spacer(flex: 3,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.black,
                  ),
                  const SizedBox(width: Dimensions.paddingSizeDefault,),
                  Text(
                    "Scan QR code",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Dimensions.fontSizeLarge,
                    fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const SizedBox(height: Dimensions.paddingSizeDefault,),

            ],
          ),
        ),
      ),
    );
  }
}
