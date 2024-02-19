import 'package:application/signup.dart';
import 'package:application/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomTextField(
              emailController, "E-Mail", Icons.mail, false),
          UiHelper.CustomTextField(
              passwordController, "PassWord", Icons.password, true),
          SizedBox(
            height: 30,
          ),
          UiHelper.CustomButton(() {}, "Login"),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already Have an Account?", style: TextStyle(fontSize: 16)),
              TextButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));},
                  child: Text(
                    "SignUp",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
