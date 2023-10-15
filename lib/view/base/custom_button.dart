import 'package:flutter/material.dart';
import '../../util/dimensions.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final double? width;
  final double? height;
  final double? radius;

  const CustomButton(
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
        width: width ?? width,
        decoration: BoxDecoration(
            color: const Color(0xff02022a),
            borderRadius: BorderRadius.circular(radius ?? 8)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: Dimensions.fontSizeLarge,
            ),
          ),
        ),
      ),
    );
  }
}
