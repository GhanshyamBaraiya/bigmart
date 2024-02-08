import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class SplashWidget extends StatelessWidget {
  final image;
  final Title;
  final SubTitle;
  final Color color;
  SplashWidget(
      {super.key, this.image, this.Title, this.SubTitle, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              Title,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 20,
                color: AppColor.primarycolor,
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              SubTitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 14,
                color: AppColor.black,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset(
            image,
            height: 288,
          )
        ],
      ),
    );
  }
}
