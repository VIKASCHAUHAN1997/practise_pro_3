import 'package:application/uihelper.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up Page"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomTextField(emailController, "E-Mail",Icons.mail,false),
          UiHelper.CustomTextField(passwordController, "PassWord", Icons.password, true),
          SizedBox(height: 30,),
          UiHelper.CustomButton(() {

          }, "Sign Up")
        ],
      ),
    );
  }
}
