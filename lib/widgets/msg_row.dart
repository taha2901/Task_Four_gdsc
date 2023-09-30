import 'package:flutter/material.dart';
import 'package:task_four/models/screen.dart';

class MsgRow extends StatelessWidget {
  const MsgRow({
    super.key,
    required this.msg,
  });
  final MsgModels msg;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(msg.image),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text('Taha'),
      ],
    );
  }
}
