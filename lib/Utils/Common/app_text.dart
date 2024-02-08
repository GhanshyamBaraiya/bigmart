import 'package:flutter/material.dart';

class globletext extends StatelessWidget {
  final String text;
  String? fontfamily;
  Color? color;
   globletext({super.key, required this.text,this.fontfamily,this.color});

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
       color: color??Colors.red,
       fontFamily: fontfamily??'Schyler',
      ),

    );
  }
}
