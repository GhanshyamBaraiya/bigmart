import 'package:flutter/material.dart';
import 'package:newbigmart/Utils/Common/app_color.dart';
import 'package:newbigmart/Utils/Common/globaleBotton.dart';

import '../Utils/Common/common_textfield.dart';

class sing_in extends StatefulWidget {
  const sing_in({super.key});

  @override
  State<sing_in> createState() => _sing_inState();
}

class _sing_inState extends State<sing_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign in',
                style: TextStyle(fontSize: 35),
              ),
              Text(
                'Hi! Welcome back, you’ve been missed',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 50,
              ),
              TextFieldWidget(text: 'Email', isPassword: false),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(text: 'Password', isPassword: true),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 14,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              GlobleButton(
                button: 'Sign in',
                onTap: () {},
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Or sign in with'),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                          AssetImage('assets/image/apple-logo (1) 2.png'),
                          scale: 3),
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/search (1) 2.png'),
                          scale: 3),
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/facebook (3) 2.png'),
                          scale: 3),
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
