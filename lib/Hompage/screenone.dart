import 'package:flutter/material.dart';

import '../Utils/Common/app_color.dart';
import '../Utils/Common/app_image.dart';
import '../main.dart';

class pageone extends StatefulWidget {
  const pageone({super.key});

  @override
  State<pageone> createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 45,
          ),
          Text(
            'Select from Our \n    Best Menu',
            style: TextStyle(color: AppColor.primarycolor, fontSize: 30),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Pick your food from our menu \n        More than 35 items.',
            style: TextStyle(fontSize: 18),
          ),
          Container(
            height: 460,
            child: Image(
              image: AssetImage(Appimage.screenone),
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: TextStyle(fontSize: 19, color: AppColor.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {

                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 19,
                    color: AppColor.white,
                    backgroundColor: AppColor.primarycolor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
