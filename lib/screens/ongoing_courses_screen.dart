import 'package:coder_zone_app/models/course_model.dart';
import 'package:coder_zone_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DesignPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class DesignPage extends StatelessWidget {
  final Course course;
  final String name;
  const DesignPage({super.key, required this.course, required this.name});

  @override
//   _DesignPageState createState() => _DesignPageState();
// }

// class _DesignPageState extends State<DesignPage> {
//   late VideoPlayerController _controller;

  @override
  // void initState() {
  //   super.initState();
  //   _controller = VideoPlayerController.asset('assets/02.Update Course.mp4')
  //     ..initialize().then((_) {
  //       setState(() {});
  //     });
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Image.asset(
                course.imageUrl,
                // "assets/images/download.png",
                fit: BoxFit.fill,
                height: 300,
                width: 390,
              ),
            ),
            // _controller.value.isInitialized
            //     ? GestureDetector(
            //         onTap: () {
            //           setState(() {
            //             _controller.value.isPlaying
            //                 ? _controller.pause()
            //                 : _controller.play();
            //           });
            //         },
            // child: AspectRatio(
            //   aspectRatio: _controller.value.aspectRatio,
            //   child: VideoPlayer(_controller),
            //   // ),
            // )
            // : Container(
            //     height: 200,
            //     color: Colors.grey[300],
            //     child: Center(
            //       child: CircularProgressIndicator(),
            //     ),
            //   ),
            SizedBox(height: 16),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/google-logo.png'),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      // 'UI Designer',
                      course.category,
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      'Progress',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.grey[300],
                            value: course.percentage,
                            color: const Color.fromRGBO(27, 56, 74, 1),
                          ),
                        ),
                        Text(
                          '${(course.percentage * 100).ceil()}%',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildLessonItem("36. States of a component", "10:36"),
                  _buildLessonItem("37. First Animation", "20:27"),
                  _buildLessonItem("38. Prototyping", "28:55"),
                  _buildLessonItem("39. Color Palette", "30:52"),
                  _buildLessonItem("40. Typography Basics", "15:30"),
                  _buildLessonItem("41. User Research", "12:45"),
                  _buildLessonItem("42. Wireframing Techniques", "25:10"),
                  _buildLessonItem("43. Interactive Components", "18:20"),
                  _buildLessonItem("44. Advanced Animations", "32:40"),
                  _buildLessonItem("45. Final Project Review", "40:00"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLessonItem(String title, String duration) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.play_arrow, color: Colors.white),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                duration,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
