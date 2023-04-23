import 'package:flutter/material.dart';
import 'package:cms/models/userModel.dart';
import 'package:cms/services/authService.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _authService = AuthService();
  String? _name;
  String? _email;
  String? _password;
  String? _passwordConfirm;

  Future<void> _submitForm() async {
  if (_formKey.currentState!.validate()) {
    _formKey.currentState!.save();
    final user = User(
      name: _name,
      email: _email,
      password: _password,
      passwordConfirm: _passwordConfirm,
    );
    try {
    
      await _authService.signUp(user);
      
      // Show success message or navigate to the next screen
    } catch (e) {
      // Show error message or handle the error
    }
  }
}

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Name'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
            onSaved: (value) => _name = value,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              // You can also add email validation logic here
              return null;
            },
            onSaved: (value) => _email = value,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter a password';
              }
              return null;
            },
            onSaved: (value) => _password = value,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Confirm Password'),
            // validator: (value) {
            //   if (value!.isEmpty) {
            //     return 'Please confirm your password';
            //   }
            //   if (value != _passwordConfirm) {
            //     return 'Passwords do not match';
            //   }
            //   return null;
            // },
            onSaved: (value) => _passwordConfirm =
                value, // assign _passwordConfirm after _password
          ),
          ElevatedButton(
            onPressed: _submitForm,
            child: Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
