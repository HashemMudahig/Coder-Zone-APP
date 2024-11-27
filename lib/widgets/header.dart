import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/images/login-logo.png'),
          // Text('adfdfa'),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Find the best \n online course ",
              style: TextStyle(
                  fontSize: 26,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
