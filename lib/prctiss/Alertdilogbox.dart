import 'package:flutter/material.dart';
import 'package:newbigmart/Utils/Common/app_color.dart';

class Alertdilogbox extends StatefulWidget {
  const Alertdilogbox({super.key});

  @override
  State<Alertdilogbox> createState() => _AlertdilogboxState();
}

class _AlertdilogboxState extends State<Alertdilogbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primarycolor,
      ),
      body: Column(
        children: [
          TextButton(onPressed: () =>alartdialogWidget(context), child: Text('AlartDialog') ),
        ],
      ),

    );
  }
  void alartdialogWidget(BuildContext context){
    showDialog(context: context,
        builder: (context)=> AlertDialog(
          title: Text('please check!'),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('no')),

            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('yes')),
          ],
        ));

  }

}
