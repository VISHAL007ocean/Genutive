import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Screen/GenderScreen.dart';
import 'package:sizer/sizer.dart';

import '../Constant/Color.dart';

int isSelected = 0;

class AppBottomModalBottomSheet2 {
  static var abc;
  static void bottomSheet(
      BuildContext context, String title, int count, List name, bool isShow) {
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
                                onPressed: () {
                                  log("${abc}");
                                }),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: isShow,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          child: const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.highlight_remove),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: count,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                print(isSelected = index);
                                log(name[index]);
                                abc = name[index];
                                setInnerState(() => isSelected = index);
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: 0.6.h, bottom: 0.6.h, left: 4.w),
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 4.w, vertical: 1.h),
                                decoration: BoxDecoration(
                                  color: isSelected == index
                                      ? AppColors.primarycolor
                                      : AppColors.whitecolor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      name[index],
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: isSelected == index
                                          ? const Icon(Icons.done)
                                          : const Icon(
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
