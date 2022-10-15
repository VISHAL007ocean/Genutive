import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Screen/AdvanceFilter.dart';
import 'package:sizer/sizer.dart';

import '../Constant/Color.dart';
import '../Model/GenderModel.dart';

int isSelected = 0;

class AppFilterBottomModalBottomSheet {
  static double start = 20;
  static double end = 50;
  static double values = 0;
  static bool isvalue = false;
  static void bottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: StatefulBuilder(
              builder: (context, setInnerState) => Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 0.8.h),
                    height: 0.8.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CupertinoButton(
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.grey),
                            ),
                            onPressed: () {}),
                        const Text(
                          "Filters",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        CupertinoButton(
                            child: const Text(
                              "Save",
                              style: TextStyle(
                                color: Color(0xff979f31),
                              ),
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      "I'm interested in",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          letterSpacing: 0.6),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                    child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        scrollDirection: Axis.horizontal,
                        itemCount: genderList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setInnerState(() => isSelected = index);
                            },
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
                                genderList[index].title,
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.w),
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text(
                            "Age",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          trailing: Text(
                            "${start.toStringAsFixed(0)}-${end.toStringAsFixed(0)}",
                            style: const TextStyle(
                              color: Color(0xff979f31),
                            ),
                          ),
                        ),
                        RangeSlider(
                          activeColor: AppColors.primarycolor,
                          values: RangeValues(start, end),
                          labels: RangeLabels(start.toString(), end.toString()),
                          onChanged: (value) {
                            setInnerState(() {
                              start = value.start;
                              end = value.end;
                            });
                          },
                          min: 18,
                          max: 50,
                        ),
                      ],
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      "Location",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          letterSpacing: 0.6),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.w),
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text(
                            "Distance Preference",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          trailing: Text(
                            "${values.toStringAsFixed(0)} miles",
                            style: const TextStyle(
                              color: Color(0xff979f31),
                            ),
                          ),
                        ),
                        Slider(
                          activeColor: AppColors.primarycolor,
                          min: 0.0,
                          max: 100.0,
                          value: values,
                          onChanged: (value) {
                            setInnerState(() {
                              values = value;
                            });
                          },
                        ),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: AppColors.primarycolor,
                              value: isvalue,
                              onChanged: (bool? value) {
                                setInnerState(() {
                                  isvalue = value!;
                                });
                              },
                            ),
                            const Text(
                              "Global Range",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Advanced filters",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    trailing: IconButton(
                        icon: const Icon(CupertinoIcons.forward),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return const AdvanceFilter();
                            }),
                          );
                        }),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      alignment: Alignment.center,
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: AppColors.primarycolor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        "Save",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  static var genderLists = ["Men", "Women", "Everyone"];
}
