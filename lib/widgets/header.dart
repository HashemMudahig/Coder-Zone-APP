import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Find the best \n online course ",
                  style: TextStyle(
                      fontSize: 26,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
