import 'package:flutter/material.dart';

void main() {
  runApp(const CoderZoneApp());
}

class CoderZoneApp extends StatelessWidget {
  const CoderZoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            // Hide labels

            backgroundColor: Color.fromRGBO(27, 56, 74, 1),
            unselectedItemColor: Colors.white,
            selectedFontSize: 20,
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.explore),
                  label: "Explore"),
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.favorite),
                  label: "Favorite"),
            ]),
        appBar: AppBar(
          title: const Text("Coder Zone App"),
          actions: [
            (IconButton(
              padding: EdgeInsets.all(10),
              iconSize: 45,
              color: Color.fromRGBO(27, 56, 74, 1),
              onPressed: () {},
              icon: Icon(Icons.view_list),
            ))
          ],
        ),
        body: const Column());
  }
}
