import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Constant/Color.dart';
import 'BottomNavigationBar.dart';

class LoginEndScreen extends StatefulWidget {
  const LoginEndScreen({Key? key}) : super(key: key);

  @override
  State<LoginEndScreen> createState() => _LoginEndScreenState();
}

class _LoginEndScreenState extends State<LoginEndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whitecolor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 28,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        title: const Text(
          "genutive",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 6.h, bottom: 2.h, left: 22.w, right: 8.w),
              child: Column(
                children: [
                  const Text(
                    "You are all set!",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: 45.w,
                    color: AppColors.primarycolor,
                    height: 0.3.h,
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return BottomNavigation();
                }), (route) => false);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: AppColors.primarycolor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
