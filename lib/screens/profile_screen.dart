// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             // Icon(Icons.arrow_back, color: Colors.black),
//             Text(
//               "الملف الشخصي",
//               style:
//                   TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//             ),
//             // Icon(Icons.more_vert, color: Colors.black),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(16),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage("assets/images/profile.jpg"),
//                   ),
//                   SizedBox(width: 20),
//                   Expanded(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         _buildStats("50", "تغريدات"),
//                         _buildStats("200", "متابعون"),
//                         _buildStats("180", "متابع"),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "اسم المستخدم",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 4),
//                   Text(
//                     "وصف مختصر عن المستخدم أو ما يفضله",
//                     style: TextStyle(fontSize: 16, color: Colors.grey[700]),
//                   ),
//                   SizedBox(height: 8),
//                   Row(
//                     children: [
//                       Icon(Icons.location_on, color: Colors.grey),
//                       SizedBox(width: 4),
//                       Text(
//                         "الموقع الحالي",
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 16),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.blue,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       onPressed: () {},
//                       child: Text(
//                         "بدء محادثة",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.grey[200],
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Icon(Icons.edit, color: Colors.black),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             DefaultTabController(
//               length: 3,
//               child: Column(
//                 children: [
//                   TabBar(
//                     indicatorColor: Colors.blue,
//                     labelColor: Colors.black,
//                     unselectedLabelColor: Colors.grey,
//                     tabs: [
//                       Tab(text: "المنشورات"),
//                       Tab(text: "الوسائط"),
//                       Tab(text: "الإعجابات"),
//                     ],
//                   ),
//                   Container(
//                     height: 400,
//                     child: TabBarView(
//                       children: [
//                         _buildPostsTab(),
//                         _buildMediaTab(),
//                         _buildLikesTab(),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildPostsTab() {
//     return ListView.builder(
//       itemCount: 5,
//       itemBuilder: (context, index) {
//         return ListTile(
//           leading: CircleAvatar(
//             backgroundImage: AssetImage("assets/profile.jpg"),
//           ),
//           title: Text("منشور $index"),
//           subtitle: Text("هذا نص المنشور رقم $index"),
//           trailing: Icon(Icons.favorite_border),
//         );
//       },
//     );
//   }

//   Widget _buildMediaTab() {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3,
//         crossAxisSpacing: 4,
//         mainAxisSpacing: 4,
//       ),
//       itemCount: 9,
//       itemBuilder: (context, index) {
//         return Container(
//           color: Colors.grey[300],
//           child: Center(child: Text("صورة $index")),
//         );
//       },
//     );
//   }

//   Widget _buildLikesTab() {
//     return Center(
//       child: Text("صفحة الإعجابات فارغة"),
//     );
//   }

//   Column _buildStats(String count, String label) {
//     return Column(
//       children: [
//         Text(
//           count,
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         Text(label, style: TextStyle(color: Colors.grey)),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilePage extends StatefulWidget {
  // var username = TextEditingController();
  // var email = TextEditingController();
  String username;
  String email;

  ProfilePage({super.key, required this.email, required this.username});
  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void _navigateToEditProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfilePage(
          username: widget.username,
          email: widget.email,
          onSave: (String newUsername, String newEmail) {
            setState(() {
              widget.username = newUsername;
              widget.email = newEmail;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/offer1.png'),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                widget.username,
                // username,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                widget.email,
                // email,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: _navigateToEditProfile,
                child: const Text("Edit profile")),
            const Text(
              'About Me',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non urna nec erat convallis dignissim.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => EditProfilePage(
            //               username: widget.username,
            //               email: widget.email,
            //               onSave: (String newUsername, String newEmail) {
            //                 setState(() {
            //                   widget.username = newUsername;
            //                   widget.email = newEmail;
            //                 });
            //               })),
            //     );
            //   },
            //   child: Text('Edit Profile'),
            // ),
            const SizedBox(height: 20),
            const Text(
              'User  Posts',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text('My first post'),
                    subtitle: Text('This is the content of my first post.'),
                  ),
                  ListTile(
                    title: Text('Another day, another post'),
                    subtitle: Text('Content of another post goes here.'),
                  ),
                  ListTile(
                    title: Text('Flutter is awesome!'),
                    subtitle: Text('Sharing my love for Flutter.'),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   // context,
                //   // MaterialPageRoute(builder: (context) => SettingsPage()),
                // );
              },
              child: const Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  final String username;
  final String email;
  final Function(String, String) onSave;
  const EditProfilePage(
      {super.key,
      required this.username,
      required this.email,
      required this.onSave});
  @override
  // ignore: library_private_types_in_public_api
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController(text: widget.username);
    _emailController = TextEditingController(text: widget.email);
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save changes action
                widget.onSave(_usernameController.text, _emailController.text);
                Navigator.pop(context); // Go back to ProfilePage
              },
              child: const Text('Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
