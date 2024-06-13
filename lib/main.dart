import 'package:cogniant/screens/first_screen.dart';
import 'package:cogniant/screens/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: FirstPage.id ,
      routes: {
        FirstPage.id: (context) => const  FirstPage(), 
        SecondPage.id: (context) => SecondPage(), 
      },
    );
  }
}
