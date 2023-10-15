import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../util/dimensions.dart';
import '../../base/custom_button.dart';
import '../dashboard/dashboard_screen.dart';
import 'input_field1.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool value1 = false;
  bool isLoading = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  FocusNode nameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: const Color(0xfff1cb0b),
            centerTitle: true,
            toolbarHeight: 80,
            title:  Text(
              "Register with skenu",
              style: TextStyle(
                  color: Color(0xff020223),
                  fontWeight: FontWeight.bold,
                  fontSize:Dimensions.fontSizeLarge),
            )),
        backgroundColor:  const Color(0xff020223),
        body: ListView(
          children:[
            Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(color: Color(0xff020223)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: Dimensions.paddingSizeDefault,
                  ),
                  InputField1(
                    title: "Username",
                    controller: nameController,
                    focusNode: nameFocusNode,
                    nextFocus: emailFocusNode,
                  ),
                  const SizedBox(
                    height: Dimensions.paddingSizeExtraLarge,
                  ),
                  InputField1(
                    title: "Email",
                    controller: emailController,
                    focusNode: emailFocusNode,
                    nextFocus: emailFocusNode,
                  ),
                  const SizedBox(
                    height: Dimensions.paddingSizeDefault,
                  ),
                  InputField1(
                    title: "Password",
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    nextFocus: passwordFocusNode,
                  ),
                  const SizedBox(
                    height: Dimensions.paddingSizeDefault,
                  ),
                  InputField1(
                    title: "Confirm password",
                    controller: confirmPasswordController,
                    focusNode: confirmPasswordFocusNode,
                    nextFocus: confirmPasswordFocusNode,
                  ),
                  const SizedBox(
                    height: Dimensions.paddingSizeDefault,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.grey,
                        side: const BorderSide(
                          color: Colors.white,
                          width: 1.5,
                        ),
                        value: value1,
                        onChanged: (value) {
                          setState(() {
                            value1 = value!;
                          });
                        },
                      ),
                      const Text(
                        "Agree Terms and condition",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Dimensions.paddingSizeDefault,
                  ),
                  CustomButton(title: "Register", onTap: (){
                    Get.to(()=> const DashboardScreen());
                  })
                ]),
          ),
      ]  ));
  }
}
