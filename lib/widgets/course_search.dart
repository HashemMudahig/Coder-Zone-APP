import 'package:flutter/material.dart';

class CourseSerach extends StatelessWidget {
  const CourseSerach({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      contentPadding: const EdgeInsets.all(10),
      hintText: "Search  something",
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
        );
  }
}
