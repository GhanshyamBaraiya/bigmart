import 'package:flutter/material.dart';
import 'package:newbigmart/Utils/Common/app_color.dart';

import '../Utils/Common/common_textfield.dart';
import '../Utils/Common/globaleBotton.dart';

class Create_Account extends StatefulWidget {
  const Create_Account({super.key});

  @override
  State<Create_Account> createState() => _Create_AccountState();
}

class _Create_AccountState extends State<Create_Account> {
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
                'Create Account',
                style: TextStyle(fontSize: 35),
              ),
              Text(
                'Fill your information below or register \n              With your social account',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(text: 'Name', isPassword: false),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(text: 'Email', isPassword: false),
              SizedBox(
                height: 8,
              ),
              TextFieldWidget(text: 'Password', isPassword: true),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Agree with Term & Condition',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              GlobleButton(
                button: 'Sign Up',
                onTap: () {},
              ),
              SizedBox(
                height: 30,
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
