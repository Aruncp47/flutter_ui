
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      TextButton(
          onPressed: () {},
          child: const ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/474x/49/62/6f/49626fe6ff534f60a9405ce526b94056.jpg")),
            title: Text("Create call link", style: TextStyle(fontSize: 18)),
            subtitle: Text("Share a link For your Whatsapp call"),
          )),
      const Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Text(
          "Recent ",
          style: TextStyle(color: Colors.white60, fontSize: 15),
        ),
      ),const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png")),
              title: Text("Contact 1"),
              subtitle: Text("15 minutes ago"),
              trailing: Icon(Icons.call,color: Colors.green,size: 30),
            ),
          ),const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png")),
              title: Text("Contact 2"),
              subtitle: Text("15 minutes ago"),
              trailing: Icon(Icons.call,color: Colors.green,size: 30),
            ),
          ),const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png")),
              title: Text("Contact 3"),
              subtitle: Text("15 minutes ago"),
              trailing: Icon(Icons.video_call,color: Colors.green,size: 30),
            ),
          ),const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png")),
              title: Text("Contact 4"),
              subtitle: Text("15 minutes ago"),
              trailing: Icon(Icons.call,color: Colors.green,size: 30),
            ),
          ),
    ]));
  }
}
