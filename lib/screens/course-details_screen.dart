import 'package:coder_zone_app/models/course_model.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  final Course course;
  const CoursePage({super.key, required this.course});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                course.title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Image.asset(
                course.imageUrl,
                height: 120,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'About this course',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              course.detail,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InfoCard(
                    label: '${course.videos} Videos',
                    icon: Icons.video_library),
                InfoCard(label: '${course.ratings} Ratings', icon: Icons.star),
                InfoCard(
                    label: '${course.enrolled} Enrolled', icon: Icons.people),
              ],
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 16),
                ),
                child: Text(
                  'Enroll Now',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String label;
  final IconData icon;

  InfoCard({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.blue),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
