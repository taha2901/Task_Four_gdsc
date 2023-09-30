import 'package:flutter/material.dart';
import 'package:task_four/widgets/msg_row.dart';

import '../models/screen.dart';

class MsgRowListView extends StatelessWidget {
  MsgRowListView({
    super.key,
  });
  final List<MsgModels> msgs = [
    MsgModels(image: 'assets/1.jpeg', name: "Taha Hamada"),
    MsgModels(image: 'assets/2.jpg', name: "Medo Hamada"),
    MsgModels(image: 'assets/3.jpeg', name: "Ahmed Mohamed"),
    MsgModels(image: 'assets/6.png', name: "Mo Salah"),
    MsgModels(image: 'assets/3.jpeg', name: "Ahmed Mohamed"),
    MsgModels(image: 'assets/7.jpg', name: "Reda Slim"),
    MsgModels(image: 'assets/3.jpeg', name: "Ahmed Mohamed"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MsgRow(
            msg: msgs[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20.0,
          );
        },
        itemCount: msgs.length,
      ),
    );
  }
}
