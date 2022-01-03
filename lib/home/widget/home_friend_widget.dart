import 'package:flutter/material.dart';
import 'package:habitat/home/widget/percent_indicator.dart';
import 'package:habitat/model/habit_object.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeFriendHabitWidget extends StatefulWidget {
  final habit;
  HomeFriendHabitWidget({Key? key, required this.habit}) : super(key: key);

  @override
  _HomeFriendHabitWidgetState createState() => _HomeFriendHabitWidgetState();
}

class _HomeFriendHabitWidgetState extends State<HomeFriendHabitWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(widget.habit.title),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(widget.habit.context),
            ),
          ),
          Container(
              width: 80,
              height: 80,
              child: PercentIndicator(
                percent: widget.habit.percent,
              )),
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}
