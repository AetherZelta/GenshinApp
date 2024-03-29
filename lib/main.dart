import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:genshin_app/pages/home_page.dart';
import 'package:genshin_app/pages/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      title: 'Genshin App',
      theme: ThemeData.dark(),
      home: Login(),
      //home: const HomePageGenshin(),
      debugShowCheckedModeBanner: false,
    );
  }
}
