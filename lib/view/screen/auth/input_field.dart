import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class InputField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final TextInputType? keyboardType;
  final double? width;
  final double? height;
  final double? radius;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final BoxBorder? boxBorder;

  const InputField({
    Key? key,
    required this.title,
    required this.controller,
    this.focusNode,
    this.nextFocus,
    this.keyboardType,
    this.width,
    this.prefixIcon,
    this.height,
    this.radius,
    this.suffixIcon,
    this.boxBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      width: width ?? Get.width,
      height: height ?? 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 12),
      ),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType ?? TextInputType.text,
        onFieldSubmitted: (_) {
          if (nextFocus != null) {
            nextFocus!.requestFocus();
          }
        },
        style: const TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            border: const GradientOutlineInputBorder(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xfff1cb0b),
                    Color(0xfff1cb0b),
                  ]),
              width: 1,
            ),


            hintText: title,
            hintStyle: const TextStyle(fontSize: 14, color: Colors.grey)),
      ),
    );
  }
}
