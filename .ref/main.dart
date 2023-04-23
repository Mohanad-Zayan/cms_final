import 'package:flutter/material.dart';
import 'package:cms/login_form.dart';
import 'package:cms/signup_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Sign Up'),
          ),
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                child: SignUpForm(),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginForm()),
                  );
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
