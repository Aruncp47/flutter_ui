import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.cyan[700],
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.favorite_border)]),
      body: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.cyan[700]),
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const Text("Type Your Location",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white)),
            Padding(
              padding: const EdgeInsets.only(
                  left: 18.0, top: 8, bottom: 8, right: 18),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    hintText: "Bouddha,Kathmandu",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    fillColor: Colors.white,
                    filled: true),
              ),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8.0, right: 8, top: 10, bottom: 0),
                        child: Icon(Icons.hotel, color: Colors.white, size: 30),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 5, 8, 8),
                        child: Text(
                          "Hotel",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      )
                    ],
                  )),
              Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8.0, right: 8, top: 10, bottom: 0),
                        child: Icon(Icons.restaurant,
                            color: Colors.white, size: 30),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 5, 8, 8),
                        child: Text(
                          "Restaurant",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      )
                    ],
                  )),
              Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 8.0, right: 8, top: 10, bottom: 0),
                        child: Icon(Icons.local_cafe,
                            color: Colors.white, size: 30),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 5, 8, 8),
                        child: Text(
                          "Cafe",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          width: double.infinity,
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 3,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://thumbs.dreamstime.com/b/hotel-bed-room-21064950.jpg"),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Icon(Icons.star_border_outlined),
                              Container(
                                height: 30,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black)),
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 7.0),
                                  child: Text("\$40",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                ),
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Awesome room near Bouddha",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              const Text("Bouddha,Kathmandu",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w400)),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    Text("(220 reviews)")
                                  ],
                                ),
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        )
      ]),
    );
  }
}
