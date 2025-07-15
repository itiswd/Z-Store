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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Image.asset(
                'assets/images/img.png',
                width: 36.w,
                height: 36.w,
              ),
            ),
            SizedBox(width: 8.w),
            const Text(
              "Powered By ",
              style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
            ),
            Image.asset('assets/images/brand2.png', height: 24.h),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(28.0.r),
        child: Column(
          children: [
            // Profile Info Card
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  collapsedShape: Border.all(color: Colors.transparent),
                  backgroundColor: Colors.white,
                  tilePadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    // vertical: 8,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: const Color(0xFFD80B19),
                    radius: 20,
                    child: const Text(
                      'HA',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  title: const Text(
                    'Profile Info',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black54,
                  ),
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Details:',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Name: Hamdy Aouf',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text(
                                    'Phone: +201019246279',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text(
                                    'Email: abcde@xyz.com',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 28.h,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFD80B19),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),

                                    elevation: 0,
                                  ),
                                  child: const Text(
                                    'Update Profile',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              SizedBox(
                                height: 28.h,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFD80B19),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),

                                    elevation: 0,
                                  ),
                                  child: const Text(
                                    'Reset Password',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // const SizedBox(height: 16),
                          Center(
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Request Account Deletion?',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Address Book Card
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  // vertical: 8,
                ),
                leading: const Icon(
                  Icons.home,
                  color: Colors.black87,
                  size: 22,
                ),
                title: const Text(
                  'Address Book',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black54,
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 16),

            // Special Offers Card
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  // vertical: 8,
                ),
                leading: const Icon(
                  Icons.local_offer,
                  color: Colors.black87,
                  size: 22,
                ),
                title: const Text(
                  'Special Offers',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black54,
                ),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 16),

            // Notification Settings Card
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    // vertical: 8,
                  ),
                  leading: const Icon(
                    Icons.notifications,
                    color: Colors.black87,
                    size: 22,
                  ),
                  title: const Text(
                    'Notification Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black54,
                  ),
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Receive Notifications',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                              ),
                              Switch(
                                value: receiveNotifications,
                                onChanged: (value) {
                                  setState(() {
                                    receiveNotifications = value;
                                  });
                                },
                                activeColor: Colors.white,
                                activeTrackColor: Color.fromARGB(
                                  255,
                                  216,
                                  11,
                                  25,
                                ),
                                inactiveThumbColor: Colors.grey,
                                inactiveTrackColor: Colors.grey.withOpacity(
                                  0.3,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'When app is opened?',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                              ),
                              Switch(
                                value: whenAppOpened,
                                onChanged: (value) {
                                  setState(() {
                                    whenAppOpened = value;
                                  });
                                },
                                activeColor: Colors.white,
                                activeTrackColor: Color.fromARGB(
                                  255,
                                  216,
                                  11,
                                  25,
                                ),
                                inactiveThumbColor: Colors.grey,
                                inactiveTrackColor: Colors.grey.withOpacity(
                                  0.3,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Play Sound?',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                ),
                              ),
                              Switch(
                                value: playSound,
                                onChanged: (value) {
                                  setState(() {
                                    playSound = value;
                                  });
                                },
                                activeColor: Colors.white,
                                activeTrackColor: Color.fromARGB(
                                  255,
                                  216,
                                  11,
                                  25,
                                ),
                                inactiveThumbColor: Colors.grey,
                                inactiveTrackColor: Colors.grey.withOpacity(
                                  0.3,
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
            ),
            const SizedBox(height: 16),

            // Switch Mode Card
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  // vertical: 8,
                ),
                leading: const Icon(
                  Icons.sync,
                  color: Colors.black87,
                  size: 22,
                ),
                title: const Text(
                  'Switch Mode',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black54,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
