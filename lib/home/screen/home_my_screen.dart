import 'package:flutter/material.dart';
import 'package:habitat/home/widget/home_myhabit_widget.dart';

class HomeMyScreen extends StatelessWidget {
  const HomeMyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List testList2 = [
      1,
      2,
      3,
      4,
      5,
    ];
    return Scaffold(
      body: Column(
        children: testList2.map((i) => HomeMyHabitWidget()).toList(),
      ),
    );
  }
}
