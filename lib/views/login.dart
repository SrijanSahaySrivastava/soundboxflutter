import 'package:flutter/material.dart';
import 'package:soundbox2/widget/buttonWidget.dart';
import 'package:soundbox2/widget/constants.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  bool _obscurePassword = true;

  void _onRememberMeChanged(bool? newValue) {
    setState(() {
      _rememberMe = newValue ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            // TODO: TOP BACK BUTTON
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Container(
                child: Text(
                  'Log in',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 45,
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: ktextFieldDecoration.copyWith(
                      hintText: 'Enter Your Email')),
              SizedBox(
                height: 32.0,
              ),
              TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    child: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _rememberMe,
                    onChanged: _onRememberMeChanged,
                    checkColor: Colors.white,
                    activeColor: Colors.black,
                  ),
                  Text('Remember Me'),
                ],
              ),
              SizedBox(
                height: 24.0,
              ),
              buttonWidget(
                label: 'LOG IN',
                colour: Colors.black,
                onPressed: () {
                  //Implement registration functionality.
                },
                textstyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Don\'t have an account? ',
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.6),
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              SizedBox(
                height: 2.0,
                child: Container(
                  color:
                      Colors.grey.withOpacity(0.3), // Set the color of the line
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              SignInButton(
                Buttons.google,
                text: "Sign up with Google",
                onPressed: () {},
              ),
              SignInButton(
                Buttons.facebookNew,
                text: "Sign up with Facebook",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
