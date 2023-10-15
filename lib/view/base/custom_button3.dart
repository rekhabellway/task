import 'package:flutter/material.dart';
import '../../util/dimensions.dart';

class CustomButton3 extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  final double? width;
  final double? height;
  final double? radius;

  const CustomButton3(
      {Key? key,
      required this.title,
      required this.onTap,
      this.width,
      this.height,
      this.radius, required this.icon})
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
            color: const Color(0xff02022a),
            borderRadius: BorderRadius.circular(radius ?? 8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30,color: Colors.white,),
            const SizedBox(width: Dimensions.paddingSizeSmall,),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: Dimensions.fontSizeExtraLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
