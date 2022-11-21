import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

final List<Map<String, String>> articles = [
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  }
];
final List<dynamic> Tb = [
  const Text(
    "For you",
  ),
  const Text("Design"),
  const Text("Beauty"),
  const Text("Education"),
  const Text("Entertainment"),
];

class HomeScreen extends StatelessWidget {
  final Color primarycol = Colors.red;
  final Color secndrycol = Colors.black;

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: Theme(
            data: ThemeData(
                primaryColor: primarycol,
                appBarTheme: AppBarTheme(
                    color: Colors.white,
                    iconTheme: IconThemeData(color: secndrycol),
                    actionsIconTheme: IconThemeData(color: secndrycol),
                    titleTextStyle: TextTheme(
                            subtitle1: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: secndrycol))
                        .headline1,
                    toolbarTextStyle: TextTheme(
                            subtitle1: TextStyle(
                                color: secndrycol,
                                fontSize: 20,
                                fontWeight: FontWeight.bold))
                        .bodyText1)),
            child: Scaffold(
                appBar: AppBar(
                  leading: const Icon(Icons.category),
                  actions: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.search))
                  ],
                  centerTitle: true,
                  title: const Text("Categories",
                      style: TextStyle(color: Colors.black)),
                  bottom: TabBar(
                      isScrollable: true,
                      labelColor: primarycol,
                      indicatorColor: primarycol,
                      unselectedLabelColor: secndrycol,
                      tabs: List.from(Tb)),
                ),
                body: TabBarView(children: [
                  ListView.separated(
                    itemBuilder: (context, index) {
                      return Bodyview(index);
                    },
                    separatorBuilder: (context, index) => const SizedBox(),
                    itemCount: articles.length,
                  ),
                ]),
                bottomNavigationBar: BottomNavigationBar(
                    selectedIconTheme: IconThemeData(color: Colors.red),
                    currentIndex: 1,
                    type: BottomNavigationBarType.fixed,
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.library_add_check), label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.favorite_border), label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person), label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.settings), label: "")
                    ]))));
  }
}

Widget Bodyview(int index) {
  Map article = articles[index];
  return Container(
    color: Colors.white,
    child: Stack(
      children: <Widget>[
        Container(
          width: 90,
          height: 90,
          color: Colors.white,
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 3,
            child: Row(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.blue,
                  width: 80.0,
                  child: const Image(
                    image: NetworkImage(
                      "https://static.vecteezy.com/system/resources/previews/000/201/215/original/vector-beach-vacations-background.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        article["title"],
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            const WidgetSpan(
                              child: CircleAvatar(
                                radius: 15.0,
                                backgroundColor: Colors.red,
                              ),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 5.0),
                            ),
                            TextSpan(
                                text: article["author"],
                                style: const TextStyle(fontSize: 16.0)),
                            const WidgetSpan(
                              child: SizedBox(width: 20.0),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 5.0),
                            ),
                            TextSpan(
                              text: article["time"],
                            ),
                          ],
                        ),
                        style: const TextStyle(height: 2.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
