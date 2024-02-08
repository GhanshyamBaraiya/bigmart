import 'package:flutter/material.dart';
import 'package:newbigmart/Utils/Common/app_image.dart';
import '../Utils/Common/app_color.dart';
class logoscreen extends StatefulWidget {
  const logoscreen({super.key});

  @override
  State<logoscreen> createState() => _logoscreenState();
}

class _logoscreenState extends State<logoscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primarycolor,
      body:

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Center(
            child:

            Container(
              height: 100,
              width: 100,
              child:
              Image(image: AssetImage(Appimage.Logo),),

            ),
            
          ),
          
           Text('Bigmarket',style: TextStyle (fontSize: 35,color: Colors.white),),
        ],
      ),
    );
  }
}
