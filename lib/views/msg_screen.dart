import 'package:flutter/material.dart';
import 'package:task_four/widgets/msg_col_list.dart';
import 'package:task_four/widgets/msg_row_list.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({super.key});

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(
          Icons.keyboard_arrow_left,
          size: 40,
          color: Color.fromARGB(255, 213, 106, 99),
        ),
        title: const Text(
          'Chat',
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            size: 40,
            color: Colors.red,
          ),
        ],
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: MsgRowListView(),
                ),
                const SizedBox(
                  height: 20,
                ),
                MsgColListView(),
              ],
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        fixedColor: Colors.red,
        elevation: 10.0,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.chat),
            label: '',
            backgroundColor: _currentIndex == 0 ? Colors.red : Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.history),
            label: '',
            backgroundColor: _currentIndex == 1 ? Colors.red : Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: '',
            backgroundColor: _currentIndex == 2 ? Colors.red : Colors.grey,
          ),
        ],
      ),
    );
  }
}
