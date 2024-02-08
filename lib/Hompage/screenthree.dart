import 'package:flutter/material.dart';

import '../Utils/Common/app_color.dart';
import '../Utils/Common/app_image.dart';

class screenthree extends StatefulWidget {
  const screenthree({super.key});

  @override
  State<screenthree> createState() => _screenthreeState();
}

class _screenthreeState extends State<screenthree> {
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
            'Quick Delivery at \n   Your Doorstep',
            style: TextStyle(color: AppColor.primarycolor, fontSize: 30),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Deliver your food at you\n             Doorstep.',
            style: TextStyle(fontSize: 18),
          ),
          Container(
            height: 460,
            child: Image(
              image: AssetImage(Appimage.screenthree),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Start',
                  style: TextStyle(color: AppColor.white),
                ),
                style: ButtonStyle(
                   
                  backgroundColor:
                      MaterialStatePropertyAll(AppColor.primarycolor),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
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
