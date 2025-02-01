import 'package:coder_zone_app/models/course_model.dart';
import 'package:coder_zone_app/screens/ongoing_courses_screen.dart';
import 'package:flutter/material.dart';

class OnGoingCourseCard extends StatelessWidget {
  final Course course;
  final String name;
  const OnGoingCourseCard(
      {super.key, required this.course, required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DesignPage(
                    course: course,
                    name: name,
                  )),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        height: 95,
        width: 188,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 95,
              child: Image.asset(
                course.imageUrl,
                fit: BoxFit.cover,
                // fit: BoxFit.fitHeight,
              ),
            ),
            Text(course.title),
            LinearProgressIndicator(
              backgroundColor: Colors.grey,
              color: Colors.amber,
              value: course.percentage,
            ),
            Text("${course.percentage * 100}% complete")
          ],
        ),
      ),
    );
  }
}
