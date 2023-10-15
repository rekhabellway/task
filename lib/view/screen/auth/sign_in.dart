import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/view/screen/auth/register.dart';
import '../../../util/dimensions.dart';
import '../../../util/images.dart';
import '../../base/custom_button.dart';
import '../../base/custom_button1.dart';
import 'login.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isLoading = false;
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
            bottom: 10,
            left: 10,
            right: 10,
            child: Column(children: [
              CustomButton1(
                title: "LOG IN WITH EMAIL",
                onTap: () {
                  Get.to(() => const LoginScreen());
                },
              ),
              const SizedBox(
                height: Dimensions.paddingSizeDefault,
              ),
              CustomButton(
                title: "Register",
                onTap: () {
                  Get.to(() => const RegisterScreen());
                },
              ),
            ]),
          ),
        ]));
  }
}
