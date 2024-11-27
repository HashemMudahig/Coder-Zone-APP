import 'package:coder_zone_app/screens/home_screen.dart';
import 'package:coder_zone_app/screens/login_screen.dart';
import 'package:coder_zone_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PasswordFieldState createState() => _PasswordFieldState();
}

// class CreateAccountPage extends StatelessWidget {
//   const CreateAccountPage({super.key});

class _PasswordFieldState extends State<CreateAccountPage> {
  var username = TextEditingController();
  var eamil = TextEditingController();
  //  final TextEditingController emailController = TextEditingController();
  bool hidden = false;
  bool confirm = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                // Logo and Header
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 300),
                      // child: Image.asset(
                      //   'assets/images/coderlogo.png', // Replace with your logo path
                      //   height: 50,
                      // ),
                    ),
                    Image.asset(
                      'assets/images/login-logo.png', // Replace with your logo path
                      height: 214,
                      width: 230,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(
                        fontSize: 32,
                        color: Color.fromRGBO(27, 56, 74, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                // Input Fields
                Container(
                  width: 355,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 238, 242, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: username,
                    decoration: InputDecoration(
                        labelText: 'Name',
                        // prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                        // hintText: "Enter your name ",
                        // hintStyle: TextStyle(fontSize: 20, color: Colors.black)
                        // border: InputBorder.none,
                        // contentPadding: EdgeInsets.all(12),
                        ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: 355,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 238, 242, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: eamil,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        // prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                        // hintText: "Enter your name ",
                        // hintStyle: TextStyle(fontSize: 20, color: Colors.black)
                        // border: InputBorder.none,
                        // contentPadding: EdgeInsets.all(12),
                        ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: 355,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 238, 242, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: hidden,
                    decoration: InputDecoration(
                      labelText: " Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {
                          setState(() {
                            hidden = !hidden;
                            print(hidden);
                          });
                        },
                      ),
                    ),

                    // keyboardType: TextInputType.visiblePassword,
                    // obscureText: hidden,
                    // decoration: InputDecoration(
                    //     // prefix: Icon(Icons.password),
                    //     labelText: 'Password',
                    //     // prefixIcon: Icon(Icons.password),
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(15),
                    //     ),
                    //     suffixIcon: Icon(Icons.visibility_off)
                    //     // hintText: "Enter your name ",
                    //     // hintStyle: TextStyle(fontSize: 20, color: Colors.black)
                    //     // border: InputBorder.none,
                    //     // contentPadding: EdgeInsets.all(12),
                    //     ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 355,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 238, 242, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: confirm,
                    decoration: InputDecoration(
                      labelText: " Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      // prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: () {
                          setState(() {
                            confirm = !confirm;
                            print(confirm);
                          });
                        },
                      ),
                    ),

                    // keyboardType: TextInputType.visiblePassword,
                    // obscureText: hidden,
                    // decoration: InputDecoration(
                    //     // prefix: Icon(Icons.password),
                    //     labelText: 'Password',
                    //     // prefixIcon: Icon(Icons.password),
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(15),
                    //     ),
                    //     suffixIcon: Icon(Icons.visibility_off)
                    //     // hintText: "Enter your name ",
                    //     // hintStyle: TextStyle(fontSize: 20, color: Colors.black)
                    //     // border: InputBorder.none,
                    //     // contentPadding: EdgeInsets.all(12),
                    //     ),
                  ),
                ),
                const SizedBox(height: 15),
                // Signup Button
                SizedBox(
                  width: 205,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage(
                            // username: username.text,
                            // email: eamil.text,
                            );
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(252, 156, 13, 1),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Text(
                      'Signup',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                // Social Signup Options
                const Text('- Or signup with -'),
                const SizedBox(height: 5),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Add Google signup logic
                        },
                        icon: Image.asset(
                          'assets/images/google-logo.png', // Replace with Google logo path
                          height: 30,
                        ),
                      ),
                      // const SizedBox(width: 20),
                      IconButton(
                        onPressed: () {
                          // Add Apple signup logic
                        },
                        icon: Image.asset(
                          'assets/images/Facebook-logo.png', // Replace with Apple logo path
                          height: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Add Apple signup logic
                        },
                        icon: Image.asset(
                          'assets/images/apple-logo.png',
                          // Replace with Apple logo path
                          height: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 0),
                // Footer Login Option
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                        // Navigate to login page
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
