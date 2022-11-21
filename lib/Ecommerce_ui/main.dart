import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Ecomui(),
  ));
}

class Ecomui extends StatelessWidget {
  List buttonic = [
    [const Icon(Icons.flash_on, color: Colors.orange), "Flash Deal"],
    [const Icon(Icons.request_page_rounded, color: Colors.orange), "Bill"],
    [const Icon(Icons.gamepad_outlined, color: Colors.orange), "Game"],
    [const Icon(Icons.card_giftcard, color: Colors.orange), "Daily Gift"],
    [const Icon(Icons.more, color: Colors.orange), "More"]
  ];
  List specialCards = [
    [
      'Smartphones',
      '18 Brands',
      'https://images.unsplash.com/photo-1587131664239-885aa135f8a6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2062&q=80'
    ],
    [
      'Fashion',
      '24 Brands',
      'https://images.unsplash.com/photo-1585914924626-15adac1e6402?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80'
    ],
  ];

  List popularCards = [
    [
      'https://images.unsplash.com/flagged/photo-1580234820596-0876d136e6d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1767&q=80',
      'PS4 Controller'
    ],
    [
      'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
      'Nike Shoes'
    ],
    [
      'https://images.unsplash.com/photo-1510878933023-e2e2e3942fb0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1772&q=80',
      'iPhone X'
    ]
  ];

  Ecomui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 70,
          title: TextFormField(
            decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                fillColor: Colors.grey[300],
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none),
                prefixIcon: const Icon(Icons.search),
                hintText: "Search product"),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 23,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 23,
                child: Icon(Icons.alarm, color: Colors.grey[600]),
              ),
            )
          ]),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple.shade500,
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    opacity: 0.2,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1620121692029-d088224ddc74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80"))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("A Summer Surprise",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Cashback 20%",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 28))
                  ]),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 15, right: 15, bottom: 0),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: buttonic.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5, mainAxisExtent: 105),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 58,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange[100]),
                        child: buttonic[index][0],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        buttonic[index][1],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  );
                })),
        const SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 8, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Special For You",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See more",
                    style: TextStyle(color: Colors.grey[600]),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 110,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 20, right: 10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: specialCards.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(specialCards[index][2]),
                            fit: BoxFit.cover,
                            opacity: 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(specialCards[index][0],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            Text(
                              specialCards[index][1],
                              style: const TextStyle(color: Colors.white),
                            )
                          ]),
                    )),
              );
            },
          ),
        ),
        const SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 8, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Popular Products",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See more",
                    style: TextStyle(color: Colors.grey[600]),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 20, right: 10),
            scrollDirection: Axis.horizontal,
            itemCount: popularCards.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange[100],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Image.network(
                          popularCards[index][0],
                          fit: BoxFit.cover,
                          width: 200,
                          height: 180,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          popularCards[index][1],
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ])),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
            elevation: 20,
            showSelectedLabels: false,
            backgroundColor: Colors.orange[100],
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey,
            currentIndex: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.store),
                label: "",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.comment_outlined,
                  ),
                  label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
            ]),
      ),
    );
  }
}
