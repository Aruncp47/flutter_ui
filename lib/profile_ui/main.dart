import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profileui(),
  ));
}

class Profileui extends StatelessWidget {
  const Profileui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 90),
            child: Text("Profile", style: TextStyle(fontSize: 23)),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 23,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu_open_sharp,
                  size: 23,
                ))
          ]),
      body: SizedBox(
        width: 500,
        height: 330,
        child: Stack(
          children: [
            SizedBox(
                height: 200,
                width: 500,
                child: Image.network(
                  "https://images.unsplash.com/photo-1504805572947-34fad45aed93?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y292ZXIlMjBwaG90b3xlbnwwfHwwfHw%3D&w=1000&q=80",
                  fit: BoxFit.fill,
                )),
            Positioned(
              bottom: 60,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 30,
                      child: Icon(Icons.message, color: Colors.white)),
                  CircleAvatar(
                      radius: 73,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://img.a.transfermarkt.technology/portrait/big/3139-1459504284.jpg?lm=1",
                        ),
                        radius: 70,
                      )),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 30,
                    child: Icon(Icons.add, color: Colors.white),
                  )
                ],
              ),
            ),
            Positioned(bottom: 10,left: 120,
              child: Center(child: Column(children: const [
                 Text("David Beckham",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                 Text("Model/Super Star",style: TextStyle(fontSize: 13,color: Colors.blue,fontWeight: FontWeight.bold))
              ],)),
            )
          ],
        ),
      ),
    );
  }
}
