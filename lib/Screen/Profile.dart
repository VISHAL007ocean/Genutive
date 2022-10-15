import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Constant/Color.dart';
import 'package:genutive/Screen/EditInfo.dart';
import 'package:genutive/Screen/PaymentMethod.dart';
import 'package:genutive/Screen/Settings.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 6.h, bottom: 1.5.h),
                padding: EdgeInsets.symmetric(vertical: 8.h),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Text(
                "Alvira, 22",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const Text(
                textAlign: TextAlign.center,
                "Accountant at Startup\nUnited States",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return Settings();
                          }),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 4.h),
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        decoration: BoxDecoration(
                          color: const Color(0xfff1f4f6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.settings,
                              color: Color(0xff666666),
                            ),
                            Text(
                              "SETTINGS",
                              style: TextStyle(
                                  color: Color(0xff666666),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return EditInfoScreen();
                          }),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 4.h),
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        decoration: BoxDecoration(
                          color: const Color(0xfff1f4f6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.edit_outlined,
                              color: Color(0xff666666),
                            ),
                            Text(
                              "EDIT INFO",
                              style: TextStyle(
                                  color: Color(0xff666666),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 1.h),
                color: const Color(0xfff1f4f6),
                child: Column(
                  children: [
                    const Icon(Icons.clean_hands_outlined,
                        color: Color(0xff666666), size: 40),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      child: const Text(
                        textAlign: TextAlign.center,
                        "Support the app and help\nus to raise funds",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return PaymentMethod();
                          }),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 2.h),
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        decoration: BoxDecoration(
                          color: AppColors.primarycolor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.add_circle_outline_rounded,
                              color: Color(0xff666666),
                            ),
                            Text(
                              "ADD CREDIT",
                              style: TextStyle(
                                  color: Color(0xff666666),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
