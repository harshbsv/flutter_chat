import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterchat/controllers/bindings/authBinding.dart';
import 'package:flutterchat/views/rootView.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthBinding(),
      title: "Flutter Chat",
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      darkTheme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
      ),
      home: Root(),
      debugShowCheckedModeBanner: false,
    );
  }
}
