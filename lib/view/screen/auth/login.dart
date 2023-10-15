import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/view/screen/auth/register.dart';
import '../../../util/dimensions.dart';
import '../../../util/images.dart';
import '../../base/custom_button.dart';
import 'input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Image.asset(
            Images.test,
            fit: BoxFit.fill,
            width: Get.width,
            height: Get.height,
          ),
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: Dimensions.paddingSizeExtraLarge,
                    ),
                    Text(
                      "Sign in to your account",
                      style: TextStyle(
                          color: const Color(0xff020223),
                          fontSize: Dimensions.fontSizeDefault),
                    ),
                    const SizedBox(
                      height: Dimensions.paddingSizeLarge,
                    ),
                    InputField(
                        title: "Email",
                        focusNode: emailFocusNode,
                        controller: emailController),
                    InputField(
                        title: "Password",
                        focusNode: passwordFocusNode,
                        controller: passwordController),
                    const SizedBox(
                      height: Dimensions.paddingSizeDefault,
                    ),
                    CustomButton(
                      title: "LOG IN",
                      onTap: () {
                        Get.to(() => const RegisterScreen());
                      },
                    ),
                    const SizedBox(
                      height: Dimensions.paddingSizeLarge,
                    ),
                    Text(
                      "FORGET PASSWORD",
                      style: TextStyle(
                          color: const Color(0xff020223),
                          fontSize: Dimensions.fontSizeDefault),
                    ),
                    const SizedBox(
                      height: Dimensions.paddingSizeExtraLarge,
                    ),
                  ]),
            ),
          ),
        ]));
  }
}
