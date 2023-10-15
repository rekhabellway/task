import 'package:flutter/material.dart';
import '../../util/dimensions.dart';

class CustomButton1 extends StatelessWidget {
  final String title;
  final Function onTap;
  final double? width;
  final double? height;
  final double? radius;

  const CustomButton1(
      {Key? key,
      required this.title,
      required this.onTap,
      this.width,
      this.height,
      this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: height ?? 60,
        width: width ??width,
        decoration: BoxDecoration(
            boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 1)],
            color: const Color(0xfff1cb0b),
            borderRadius: BorderRadius.circular(radius ?? 8)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: const Color(0xff020223),
              fontWeight: FontWeight.bold,
              fontSize: Dimensions.fontSizeLarge,
            ),
          ),
        ),
      ),
    );
  }
}
