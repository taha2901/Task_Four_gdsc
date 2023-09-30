import 'package:flutter/material.dart';
import 'package:task_four/models/screen.dart';

class MsgColumn extends StatelessWidget {
  const MsgColumn({
    super.key, required this.msg,
  });
final MsgModels msg;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(msg.image),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                msg.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Hello',
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '4:30 AM',
              ),
            ],
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.red, width: 2.0),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: const Icon(
              Icons.phone,
              color: Colors.red,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.red, width: 2.0),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child:const Icon(
              Icons.video_camera_back_outlined,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
