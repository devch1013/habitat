import 'package:flutter/material.dart';
import 'package:habitat/model/habit_object.dart';
import '../widget/home_friend_widget.dart';

class HomeFriendScreen extends StatelessWidget {
  const HomeFriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Habit> habitList = [
      Habit(title: 'First Habit', context: '2', percent: 0.3),
      Habit(title: 'Second Habit', context: '5', percent: 0.5),
    ];

    return Scaffold(
      body: Column(
        children: habitList
            .map((i) => HomeFriendHabitWidget(
                  habit: i,
                ))
            .toList(),
      ),
    );
  }
}
