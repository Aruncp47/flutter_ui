import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: const Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBar(title: const Text("Search contacts"),
            leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search))
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 100.0),
            child: ListTile(title: Text("Phone contacts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          ),
          const ListTile(
            leading: CircleAvatar(child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png"))),
            title: Text("Contact1"),
            subtitle: Text("836846598"),
            trailing: Icon(Icons.call),
          ),
          const ListTile(
            leading: CircleAvatar(child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png"))),
            title: Text("Contact2"),
            subtitle: Text("836846598"),
            trailing: Icon(Icons.call),
          ),
          const ListTile(
            leading: CircleAvatar(child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png"))),
            title: Text("Contact3"),
            subtitle: Text("836846598"),
            trailing: Icon(Icons.call),
          ),
          const ListTile(
            leading: CircleAvatar(child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png"))),
            title: Text("Contact4"),
            subtitle: Text("836846598"),
            trailing: Icon(Icons.call),
          ),
          const ListTile(
            leading: CircleAvatar(child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png"))),
            title: Text("Contact5"),
            subtitle: Text("836846598"),
            trailing: Icon(Icons.call),
          ),
          const ListTile(
            leading: CircleAvatar(child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png"))),
            title: Text("Contact6"),
            subtitle: Text("836846598"),
            trailing: Icon(Icons.call),
          ),
          const ListTile(
            leading: CircleAvatar(child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png"))),
            title: Text("Contact7"),
            subtitle: Text("836846598"),
            trailing: Icon(Icons.call),
          ),
          const ListTile(
            leading: CircleAvatar(child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png"))),
            title: Text("Contact8"),
            subtitle: Text("836846598"),
            trailing: Icon(Icons.call),
          ),
          const ListTile(
            leading: CircleAvatar(child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png"))),
            title: Text("Contact9"),
            subtitle: Text("836846598"),
            trailing: Icon(Icons.call),
          ),
          const ListTile(
            leading: CircleAvatar(child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png"))),
            title: Text("Contact10"),
            subtitle: Text("836846598"),
            trailing: Icon(Icons.call),
          )
        ],
      ),
    );
  }
}
