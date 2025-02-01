import 'package:coder_zone_app/models/course_model.dart';
import 'package:coder_zone_app/screens/profile_screen.dart';
import 'package:coder_zone_app/widgets/course_search.dart';
import 'package:coder_zone_app/widgets/header.dart';
import 'package:coder_zone_app/widgets/most_popular_course_card.dart';
import 'package:coder_zone_app/widgets/ongoing_course_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String username;
  final String email;

  const HomePage({super.key, required this.username, required this.email});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int CurrentIdex = 0;
  List<Course> ongoingCourses = [
    Course(
        1,
        "web development for beginners",
        'assets/images/P.png',
        0.20,
        49,
        4.7,
        "web developing",
        4900,
        12,
        "This course includes an overview of the various tools available for writing and running Python, and gets students coding quickly.Students are Read more"),
    Course(
        1,
        "Learn Python From Zero\n ",
        'assets/images/webDev.png',
        0.98,
        49,
        4.7,
        "Python",
        4900,
        12,
        "This course includes an overview of the various tools available for writing and running Python, and gets students coding quickly.Students are Read more"),
    Course(
        1,
        "web development for beginners",
        'assets/images/Web.jpg',
        0.54,
        49,
        4.7,
        "web developing",
        4900,
        12,
        "This course includes an overview of the various tools available for writing and running Python, and gets students coding quickly.Students are Read more"),
    Course(
        1,
        "web development for beginners",
        'assets/images/download.png',
        0.32,
        49,
        4.7,
        "web developing",
        4900,
        12,
        "This course includes an overview of the various tools available for writing and running Python, and gets students coding quickly.Students are Read more"),
  ];
  List<Course> mostPopularCourses = [
    Course(
        1,
        "web development for beginners",
        'assets/images/Digital.png',
        0.98,
        49,
        4.7,
        "web developing",
        4900,
        12,
        "This course includes an overview of the various tools available for writing and running Python, and gets students coding quickly.Students are Read more"),
    Course(
        1,
        "web development for beginners",
        'assets/images/Digtal.jpg',
        0.32,
        49,
        4.7,
        "web developing",
        4900,
        12,
        "This course includes an overview of the various tools available for writing and running Python, and gets students coding quickly.Students are Read more"),
    Course(
        1,
        "web development for beginners",
        'assets/images/download.png',
        0.34,
        49,
        4.7,
        "web developing",
        4900,
        12,
        "This course includes an overview of the various tools available for writing and running Python, and gets students coding quickly.Students are Read more"),
  ];
  List<Course> filterdCourses = [];

  @override
  void initState() {
    super.initState();
    filterdCourses = ongoingCourses;
  }

  void _navigateToProfile(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ProfilePage(
                username: widget.username,
                email: widget.email,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    int CurrentIdex = 0;
    void searchFun(String value) {
      setState(() {
        filterdCourses = ongoingCourses
            .where((element) =>
                element.title.toLowerCase().contains(value.toLowerCase()))
            .toList();
      });
    }

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromRGBO(27, 56, 74, 1),
          unselectedItemColor: Colors.white,
          selectedFontSize: 20,
          currentIndex: CurrentIdex, // Highlight the selected tab
          onTap: (index) {
            if (index == 3) {
              // Navigate to Profile screen if the "Profile" tab is pressed
              _navigateToProfile(context);
            } else {
              setState(() {
                CurrentIdex = index;
              });
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
        // drawer: Drawer(
        //   child: ListView(
        //     children: [
        //       ListTile(
        //         title: Text('Setting'),
        //         trailing: Icon(Icons.settings),
        //       )
        //     ],
        //   ),
        // ),
        // bottomNavigationBar: BottomNavigationBar(
        //     selectedItemColor: Colors.white,
        //     type: BottomNavigationBarType.fixed,
        //     // Hide labels

        //     backgroundColor: Color.fromRGBO(27, 56, 74, 1),
        //     unselectedItemColor: Colors.white,
        //     selectedFontSize: 20,
        //     items: const [
        //       BottomNavigationBarItem(
        //           backgroundColor: Colors.white,
        //           icon: Icon(
        //             Icons.home,
        //           ),
        //           label: "Home"),
        //       BottomNavigationBarItem(
        //           backgroundColor: Colors.white,
        //           icon: Icon(Icons.explore),
        //           label: "Explore"),
        //       BottomNavigationBarItem(
        //           backgroundColor: Colors.white,
        //           icon: Icon(Icons.favorite),
        //           label: "Favorite"),
        //       BottomNavigationBarItem(
        //           backgroundColor: Colors.white,
        //           icon: Icon(Icons.person),
        //           label: "Profile")
        //     ]),
        appBar: AppBar(
          // title: Image.asset(
          //   "assets/images/coderlogo.png",
          //   width: 60,
          //   height: 60,
          //   fit: BoxFit.fill,
          //   color: Colors.black,
          // ),
          actions: [
            (IconButton(
              padding: const EdgeInsets.all(10),
              iconSize: 45,
              color: const Color.fromRGBO(27, 56, 74, 1),
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      width: 396,
                      height: 200,
                      alignment: Alignment.bottomRight,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(27, 56, 74, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Header(),
                        const SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextField(
                              onChanged: searchFun,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(10),
                                hintText: "Search  something ",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade400,
                                ),
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.search,
                                    size: 20,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(55),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              )

                              // prefixIcon: Icon(Icons.search),
                              // filled: true,
                              // fillColor: Colors.white),
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
                const TitleWidget(
                  title: "ongoing courses ",
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: filterdCourses.length,
                      itemBuilder: (context, index) {
                        return OnGoingCourseCard(
                          course: filterdCourses[index],
                          name: widget.username,
                        );
                      }),
                ),
                const TitleWidget(title: "Most popular"),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: mostPopularCourses.length,
                      itemBuilder: (context, index) {
                        return MostPopularCourseCard(
                            course: mostPopularCourses[index]);
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
