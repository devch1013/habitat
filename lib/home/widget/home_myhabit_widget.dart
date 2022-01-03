import 'package:flutter/material.dart';

class HomeMyHabitWidget extends StatefulWidget {
  HomeMyHabitWidget({Key? key}) : super(key: key);

  @override
  _HomeHabitWidgetState createState() => _HomeHabitWidgetState();
}

class _HomeHabitWidgetState extends State<HomeMyHabitWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Text('Title'),
          ),
          Expanded(
            child: Text('1'),
          ),
          Expanded(
            child: Text('Progress'),
          ),
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(
        width: 1,
        color: Colors.black,
      )),
    );
  }
}
