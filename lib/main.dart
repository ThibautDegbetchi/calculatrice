import 'package:calculatrice/constants/colors.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return const MaterialApp(
     color: tdBGColor,
     home: MyHomePage(title: 'Calculatrice'),
     debugShowCheckedModeBanner: false,
   );
  }

}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: const HomePage()
    );
  }


}
