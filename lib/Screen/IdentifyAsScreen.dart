import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/CustomWidget/CustomBottomModalSheet2.dart';
import 'package:genutive/Screen/ReligionScreen.dart';
import 'package:sizer/sizer.dart';

import '../Constant/Color.dart';
import '../Model/AutismModel.dart';

class IdentifyAsScreen extends StatefulWidget {
  const IdentifyAsScreen({Key? key}) : super(key: key);

  @override
  State<IdentifyAsScreen> createState() => _IdentifyAsScreenState();
}

class _IdentifyAsScreenState extends State<IdentifyAsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: EdgeInsets.only(top: 6.h, bottom: 2.h),
              child: const Text(
                "I am ready to date someone who identifies as",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(top: 0.6.h, bottom: 0.6.h, left: 4.w),
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: AppColors.primarycolor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Diabeties",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                      onPressed: () {
                        AppBottomModalBottomSheet2.bottomSheet(
                            context,
                            "Preference",
                            autismList.length,
                            List.generate(autismList.length,
                                (index) => autismList[index].title),
                            true);
                      },
                      icon: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return ReligionScreen();
                  }),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: AppColors.primarycolor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Continue",
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
