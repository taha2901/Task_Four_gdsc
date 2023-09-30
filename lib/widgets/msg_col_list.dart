import 'package:flutter/material.dart';
import 'package:task_four/widgets/msg_column.dart';
import '../models/screen.dart';

class MsgColListView extends StatelessWidget {
  MsgColListView({
    super.key,
  });
final List<MsgModels> msgs = [
    MsgModels(image: 'assets/1.jpeg', name: "Taha Hamada"),
    MsgModels(image: 'assets/2.jpg', name: "Medo Hamada"),
    MsgModels(image: 'assets/3.jpeg', name: "Ahmed Mohamed"),
    MsgModels(image: 'assets/6.png', name: "Mo Salah"),
    MsgModels(image: 'assets/7.jpg', name: "Reda Slim"),
    MsgModels(image: 'assets/2.jpg', name: "Medo Hamada"),
    MsgModels(image: 'assets/3.jpeg', name: "Ahmed Mohamed"),
    MsgModels(image: 'assets/6.png', name: "Mo Salah"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return MsgColumn(msg: msgs[index]);
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 2.0,
              width: double.infinity,
              color: Colors.grey,
            ),
          );
        },
        itemCount: msgs.length);
  }
}
