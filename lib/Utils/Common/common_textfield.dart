import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newbigmart/Utils/Common/app_color.dart';

class TextFieldWidget extends StatefulWidget {
  final String text;
  final bool isPassword;
  TextFieldWidget({super.key, required this.text, required this.isPassword});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: widget.isPassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            helperStyle: TextStyle(color: AppColor.black),
          ),
          style: TextStyle(color: AppColor.black),
        ),
      ],
    );
  }
}
