import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Constant/Color.dart';
import 'package:genutive/CustomWidget/MultiSelectBottomSheet.dart';
import 'package:genutive/Model/MedicalConditionModel.dart';
import 'package:genutive/Model/PersonalityModel.dart';
import 'package:genutive/Screen/BottomNavigationBar.dart';
import 'package:sizer/sizer.dart';

import '../CustomWidget/CustomBottomModalSheet.dart';
import '../Model/MyBasicsModel.dart';

class AdvanceFilter extends StatefulWidget {
  const AdvanceFilter({Key? key}) : super(key: key);

  @override
  State<AdvanceFilter> createState() => _AdvanceFilterState();
}

class _AdvanceFilterState extends State<AdvanceFilter> {
  int selected1 = 0;
  int selected2 = 0;
  int selected3 = 0;
  static double start = 2;
  static double end = 50;
  var childrenList = ["All", "Yes", "No"];
  var educationList = ["All", "HS", "B.S", "Grad"];
  var statusList = ["All", "Single", "Divorced"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whitecolor,
        leading: IconButton(
            icon: const Icon(
              CupertinoIcons.back,
              color: CupertinoColors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) {
                return BottomNavigation();
              }), (route) => false);
            }),
        title: const Text(
          "Advanced filters",
          style: TextStyle(
              fontWeight: FontWeight.w500, color: CupertinoColors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6.w),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      "Height",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    trailing: Text(
                      "${start.toStringAsFixed(0)} feet ${end.toStringAsFixed(0)} inches",
                      style: const TextStyle(
                        color: Color(0xff979f31),
                      ),
                    ),
                  ),
                  Slider(
                    activeColor: AppColors.primarycolor,
                    min: 2,
                    max: 100.0,
                    value: start,
                    onChanged: (value) {
                      setState(() {
                        start = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text(
                "Children",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    letterSpacing: 0.6),
              ),
            ),
            SizedBox(
              height: 5.h,
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: childrenList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() => selected1 = index);
                      },
                      child: Container(
                        width: 25.w,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        padding: EdgeInsets.symmetric(vertical: 1.6.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: selected1 == index
                              ? AppColors.primarycolor
                              : AppColors.whitecolor,
                        ),
                        child: Text(
                          childrenList[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: selected1 == index
                                ? Colors.black
                                : const Color(0xff6b718c),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const ListTile(
              title: Text(
                "Education",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    letterSpacing: 0.6),
              ),
            ),
            SizedBox(
              height: 5.h,
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: educationList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() => selected2 = index);
                      },
                      child: Container(
                        width: 25.w,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        padding: EdgeInsets.symmetric(vertical: 1.6.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: selected2 == index
                              ? AppColors.primarycolor
                              : AppColors.whitecolor,
                        ),
                        child: Text(
                          educationList[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: selected1 == index
                                ? Colors.black
                                : const Color(0xff6b718c),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const ListTile(
              title: Text(
                "Status",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    letterSpacing: 0.6),
              ),
            ),
            SizedBox(
              height: 5.h,
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: statusList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() => selected3 = index);
                      },
                      child: Container(
                        width: 25.w,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        padding: EdgeInsets.symmetric(vertical: 1.6.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: selected3 == index
                              ? AppColors.primarycolor
                              : AppColors.whitecolor,
                        ),
                        child: Text(
                          statusList[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: selected1 == index
                                ? Colors.black
                                : const Color(0xff6b718c),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            advanceFilterBottomSheet("Medical Condition", "Depression", () {
              MultiSelectBottomSheet.bottomSheet(
                  context,
                  "Medical Condition",
                  medicalList.length,
                  List.generate(
                      medicalList.length, (index) => medicalList[index].title));
            }),
            advanceFilterBottomSheet("Personality type", "ENFJ", () {
              MultiSelectBottomSheet.bottomSheet(
                  context,
                  "Personality type",
                  personalityList.length,
                  List.generate(personalityList.length,
                      (index) => personalityList[index].title));
            }),
            advanceFilterBottomSheet("Profession", "Doctor", () {
              MultiSelectBottomSheet.bottomSheet(
                  context,
                  "Profession",
                  personalityList.length,
                  // List.generate(
                  //     basicList.length, (index) => basicList[0].list.toList()));
                  List.generate(personalityList.length,
                      (index) => personalityList[index].title));
            }),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4.h),
                decoration: BoxDecoration(
                  color: AppColors.primarycolor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Save",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget allList(String title, int count, List list, VoidCallback onTap) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w600, fontSize: 17, letterSpacing: 0.6),
          ),
        ),
        SizedBox(
          height: 5.h,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              scrollDirection: Axis.horizontal,
              itemCount: count,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: onTap,
                  // setState(() => isSelected = index);

                  child: Container(
                    width: 25.w,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 2.w),
                    padding: EdgeInsets.symmetric(vertical: 1.6.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: isSelected == index
                          ? AppColors.primarycolor
                          : AppColors.whitecolor,
                    ),
                    child: Text(
                      list[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: isSelected == index
                            ? Colors.black
                            : const Color(0xff6b718c),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }

  Widget advanceFilterBottomSheet(String title, title2, VoidCallback onTap) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w600, fontSize: 17, letterSpacing: 0.6),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          child: ListTile(
            title: Text(
              title2,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  letterSpacing: 0.6),
            ),
            trailing: IconButton(
              icon: const Icon(CupertinoIcons.chevron_down),
              onPressed: onTap,
            ),
          ),
        ),
      ],
    );
  }
}
