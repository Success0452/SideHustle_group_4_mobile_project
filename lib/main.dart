import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Profile',
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff240469),
          title: const Text('Profile Page'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 10, right: 30),
                        child: CircleAvatar(
                          radius: 40,
                          // backgroundImage: AssetImage('assets/mount.jpg'),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Olatunde Success',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'olatundesuccess54@gmail.com',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text('group4 project',
                              style: TextStyle(fontSize: 16)),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('User Info',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 20,
                ),
                const BuildListTile(icon: Icons.person, text: 'Edit Profile'),
                const BuildListTile(icon: Icons.badge, text: 'Badges'),
                const BuildListTile(
                    icon: Icons.add_circle_outline, text: 'Study Goals'),
                const BuildListTile(
                    icon: Icons.notifications_off, text: 'Focus Mode'),
                const BuildListTile(
                    icon: Icons.restart_alt, text: 'School Schedule'),
                const BuildListTile(
                    icon: Icons.person_search, text: 'Invite Friends'),
              ],
            ),
          ),
        ));
  }
}

class BuildListTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const BuildListTile({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300)),
        child: ListTile(
          leading: Icon(
            icon,
            color: const Color(0xff240469),
          ),
          title: Text(text),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey.shade300,
          ),
        ),
      ),
    );
  }
}
