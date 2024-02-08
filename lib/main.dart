import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newbigmart/prctiss/Alertdilogbox.dart';
import 'package:newbigmart/prctiss/datepicker.dart';
import 'package:newbigmart/prctiss/dropdownbotten.dart';
import 'Hompage/CreateAccount.dart';
import 'Hompage/Shop_Popular_Categories.dart';
import 'Hompage/Verify_Code.dart';
import 'Hompage/bottomnavigat.dart';
import 'Hompage/logoscreen.dart';
import 'Hompage/screenone.dart';
import 'Hompage/screenthree.dart';
import 'Hompage/screentwo.dart';
import 'Hompage/sing_in.dart';
import 'Utils/Common/app_color.dart';
import 'Utils/Common/app_image.dart';
import 'Utils/Common/globaleBotton.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Shop_Popular_Categories(),

    );
  }
}

