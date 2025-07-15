import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/category_chip.dart';
import '../widgets/product_card.dart';
import '../widgets/product_list_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            const Spacer(),
            const Icon(Icons.search),
            SizedBox(width: 10.w),
            const Icon(Icons.notifications_none),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                "Categories",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: const [
                  Row(
                    children: [
                      CategoryChip(label: 'All'),
                      SizedBox(width: 8),
                      CategoryChip(label: 'Software Solution'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      CategoryChip(label: 'IoT Solution'),
                      SizedBox(width: 8),
                      CategoryChip(label: 'Embedded Solution'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                "Trending Products",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.h),
            CarouselSlider(
              options: CarouselOptions(
                height: 202.h,
                enlargeCenterPage: true,
                enlargeFactor: 0,
                viewportFraction: 0.6,
                enableInfiniteScroll: true,
                initialPage: 1,
              ),
              items: const [
                ProductCard(
                  title: "Z-Track",
                  price: "89998 EGP",
                  imageUrl: 'assets/images/img.png',
                ),
                ProductCard(
                  title: "E-Commerce Mobile App",
                  price: "49999 EGP",
                  imageUrl: 'assets/images/img.png',
                ),
                ProductCard(
                  title: "Z-Sensor",
                  price: "29999 EGP",
                  imageUrl: 'assets/images/img.png',
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "All Products",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_list, color: Colors.black),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/view_comfy_alt.png',
                          height: 18.h,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Column(
                    children: List.generate(
                      4,
                      (index) => Padding(
                        padding: EdgeInsets.only(bottom: 4.h),
                        child: ProductListCard(
                          title: "Z-Guard",
                          description:
                              "The Z-Guard solution is a robust device designed for real-time monitoring...",
                          price: "89998 EGP",
                          status: "Out of Stock",
                          category: "Embedded Solution",
                          imageUrl: 'assets/images/z-guard.png',
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Color.fromARGB(255, 216, 11, 25),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2),
            label: 'Orders',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
