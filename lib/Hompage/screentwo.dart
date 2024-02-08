import 'package:flutter/material.dart';
import '../Utils/Common/app_color.dart';
import '../Utils/Common/app_image.dart';

class screentwo extends StatefulWidget {
  const screentwo({super.key});

  @override
  State<screentwo> createState() => _screentwoState();
}

class _screentwoState extends State<screentwo> {
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
            'Easy and Online \n       Payment',
            style: TextStyle(color: AppColor.primarycolor, fontSize: 30),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'You can pay cash on delivery and\n        Card payment is available.',
            style: TextStyle(fontSize: 18),
          ),
          Container(
            height: 460,
            child: Image(
              image: AssetImage(Appimage.screentwo),
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: TextStyle(fontSize: 19, color: AppColor.black),
                ),
              ),
              TextButton(
                onPressed: () {},
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
