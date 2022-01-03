import 'package:flutter/material.dart';
import 'package:habitat/home/screen/home_my_screen.dart';
import 'package:habitat/home/screen/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habitat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.grey,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline4: const TextStyle(
                fontFamily: 'NotoSansKR',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => NavigationScreen(),
      },
    );
  }
}
