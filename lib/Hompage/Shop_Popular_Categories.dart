import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newbigmart/Utils/Common/app_color.dart';

class Shop_Popular_Categories extends StatefulWidget {
  const Shop_Popular_Categories({super.key});

  @override
  State<Shop_Popular_Categories> createState() =>
      _Shop_Popular_CategoriesState();
}

class _Shop_Popular_CategoriesState extends State<Shop_Popular_Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: 800,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff971DE2),
                    Color(0xffFFE86D),
                  ]),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Row(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Delivery in 15 minutes ',
                        style: TextStyle(
                          color: AppColor.black,
                        ),
                      ),
                      Icon(Icons.shopping_cart_outlined),
                      Icon(Icons.menu),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
