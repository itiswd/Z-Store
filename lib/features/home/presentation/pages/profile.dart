import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool receiveNotifications = true;
  bool whenAppOpened = true;
  bool playSound = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Container(
                width: 36.w,
                height: 36.w,
                color: const Color.fromARGB(255, 216, 11, 25),
                child: const Icon(Icons.store, color: Colors.white),
              ),
            ),
            SizedBox(width: 8.w),
            const Text(
              "Powered By ",
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            const Text(
              "ZAGSYSTEMS",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Info Card
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ExpansionTile(
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 216, 11, 25),
                  child: const Text(
                    'HA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: const Text(
                  'Profile Info',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Details:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Name: Hamdy Aouf',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Phone: +201019246279',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Email: abcde@xyz.com',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    216,
                                    11,
                                    25,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 12,
                                  ),
                                ),
                                child: const Text(
                                  'Update Profile',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    216,
                                    11,
                                    25,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 12,
                                  ),
                                ),
                                child: const Text(
                                  'Reset Password',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Center(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Request Account Deletion?',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Address Book Card
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: const Icon(Icons.home, color: Colors.black),
                title: const Text(
                  'Address Book',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 16),

            // Special Offers Card
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: const Icon(Icons.local_offer, color: Colors.black),
                title: const Text(
                  'Special Offers',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 16),

            // Notification Settings Card
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ExpansionTile(
                leading: const Icon(Icons.notifications, color: Colors.black),
                title: const Text(
                  'Notification Settings',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Receive Notifications',
                              style: TextStyle(fontSize: 14),
                            ),
                            Switch(
                              value: receiveNotifications,
                              onChanged: (value) {
                                setState(() {
                                  receiveNotifications = value;
                                });
                              },
                              activeColor: const Color.fromARGB(
                                255,
                                216,
                                11,
                                25,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'When app is opened?',
                              style: TextStyle(fontSize: 14),
                            ),
                            Switch(
                              value: whenAppOpened,
                              onChanged: (value) {
                                setState(() {
                                  whenAppOpened = value;
                                });
                              },
                              activeColor: const Color.fromARGB(
                                255,
                                216,
                                11,
                                25,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Play Sound?',
                              style: TextStyle(fontSize: 14),
                            ),
                            Switch(
                              value: playSound,
                              onChanged: (value) {
                                setState(() {
                                  playSound = value;
                                });
                              },
                              activeColor: const Color.fromARGB(
                                255,
                                216,
                                11,
                                25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Switch Mode Card
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: const Icon(Icons.sync, color: Colors.black),
                title: const Text(
                  'Switch Mode',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
