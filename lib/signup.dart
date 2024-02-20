
import 'package:application/uihelper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
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
    signUp(String email, String password)async{
      if(email=="" && password==""){
        UiHelper.CustomAlertBox(context, "Enter Required Fields");
      }
      else {
        UserCredential? userCredential;
        try{
          userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value) {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePageScreen()));
          });
        }
        on FirebaseAuthException catch(ex){
          return UiHelper.CustomAlertBox(context, ex.code.toString());
        }
      }
    }
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
           signUp(emailController.text.toString(), passwordController.text.toString());
          }, "Sign Up")
        ],
      ),
    );
  }
}
