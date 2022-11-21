import 'package:flutter/material.dart';


class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        TextButton(
            onPressed: () {},
            child: const ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgRZrZPTU_mJfjY5nTMSVrF-Qcpztqgzg39Q&usqp=CAU")),
              title: Text("My Status",style:  TextStyle(fontSize: 18)),
              subtitle: Text("Tap to add status update"),
            )),
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            "Recent Updates",
            style: TextStyle(color: Colors.white60, fontSize: 15),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png")),
            title: Text("Contact 1"),
            subtitle: Text("15 minutes ago"),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png")),
            title: Text("Contact 2"),
            subtitle: Text("15 minutes ago"),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png")),
            title: Text("Contact 3"),
            subtitle: Text("15 minutes ago"),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png")),
            title: Text("Contact 4"),
            subtitle: Text("15 minutes ago"),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png")),
            title: Text("Contact 5"),
            subtitle: Text("15 minutes ago"),
          ),
        ),
      ]),
    );
  }
}
