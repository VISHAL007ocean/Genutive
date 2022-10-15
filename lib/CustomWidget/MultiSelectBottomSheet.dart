import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Constant/Color.dart';
import '../Model/MedicalConditionModel.dart';
import 'CustomBottomModalSheet.dart';

class MultiSelectBottomSheet {
  static List medicalLists = [];
  static int isselected = 0;
  static void bottomSheet(
      BuildContext context, String title, int? count, List list) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
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
                            Text(
                              title,
                              style: const TextStyle(
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
                      Expanded(
                        child: ListView.builder(
                          itemCount: count,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                setInnerState(() {
                                  isselected = index;
                                });
                                //    print(isSelected = index);
                                // setInnerState(() => isSelected = index);
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: 0.6.h, bottom: 0.6.h, left: 4.w),
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 4.w, vertical: 1.h),
                                decoration: BoxDecoration(
                                  color: isselected == index
                                      ? AppColors.primarycolor
                                      : CupertinoColors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      list[index],
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.done,
                                        color: AppColors.whitecolor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ));
        });
  }
}
