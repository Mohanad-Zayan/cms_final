import 'package:cms_final/pages/Entry.dart';
import 'package:cms_final/pages/ForgetPw.dart';
import 'package:cms_final/pages/NewSignup.dart';
import 'package:cms_final/pages/entry1.dart';
import 'package:cms_final/pages/welcomeScreen.dart';
import 'package:flutter/material.dart';

import '../components/components.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor:Color(0xff202020),
        leading:IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));}
        ),
        // Icon(Icons.arrow_back_ios,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 60),
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Log In",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                    controller: emailController,
                    onSubmitted: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      hintText: "E-mail",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                    )),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                    controller: passController,
                    onSubmitted: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Remember me?",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 40,
                ),
                TextButton(
                    onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPw()));},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            button(
              padding: 10.0,
                width: MediaQuery.of(context).size.width,
                text: "Log In Now", function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Entryy()));
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const NewSignup()));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            )
          ],
        )),
      ),
    );
  }
}
