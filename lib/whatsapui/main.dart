import 'package:flutter/material.dart';
import 'package:flutter_ui/whatsapui/status.dart';

import 'Calls.dart';
import 'camera.dart';
import 'chats.dart';


void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,theme: ThemeData.dark(),
    home: Bottomnav(),
  ));
}

class Bottomnav extends StatefulWidget {
  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  var bodies = [
    const camera(),const Chats(),const Status(),const Calls()
  ];
  int selectedindex = 1;

  void onitemtap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Whatsapp"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
      ]),
      body: Center(
        child: bodies.elementAt(selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white60,
          backgroundColor: Colors.black,
          currentIndex: selectedindex,
          onTap: onitemtap,
          items: const [BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: "Camera"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.upload), label: "Status"),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          ]),
    );
  }
}
