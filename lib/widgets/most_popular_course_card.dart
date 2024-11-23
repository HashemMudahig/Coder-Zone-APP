import 'package:flutter/material.dart';

import '../models/course_model.dart';
import '../screens/course-details_screen.dart';

class MostPopularCourseCard extends StatelessWidget {
  final Course course;
  const MostPopularCourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 114,
              width: 169,
              child: Image.asset(
                course.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(course.category,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),
                  Text(
                    course.title,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  Text("⭐ ${course.rating} (${course.ratings} Ratings)",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 13)),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CoursePage(course: course);
                            }));
                          },
                          child: Text("Enroll now"),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.amber),
                          )),
                      IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
