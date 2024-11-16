import 'package:coder_zone_app/widgets/course_search.dart';
import 'package:coder_zone_app/widgets/header.dart';
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
              BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.person),
                  label: "Profile")
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
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 396,
              height: 188,
              alignment: Alignment.bottomRight,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(27, 56, 74, 1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: const Column(
                children: [Header(), CourseSerach()],
              ),
            )
          ],
        ));
  }
}
