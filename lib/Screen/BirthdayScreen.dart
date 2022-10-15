import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Screen/UploadPhoto.dart';
import 'package:sizer/sizer.dart';

import '../Constant/Color.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({Key? key}) : super(key: key);

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  DateTime? selectedDate;

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
              padding: EdgeInsets.only(top: 6.h, bottom: 2.h),
              child: const Text(
                "What is your\nbirthday?",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Day",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 1.2.h),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black.withOpacity(0.4),
                          ),
                          color: AppColors.primarycolor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(selectedDate?.day == null
                            ? ""
                            : "${selectedDate?.day}"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Month",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 1.2.h),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black.withOpacity(0.4),
                          ),
                          color: AppColors.primarycolor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(selectedDate?.month == null
                            ? ""
                            : "${selectedDate?.month}"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Year",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 1.2.h),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black.withOpacity(0.4),
                          ),
                          color: AppColors.primarycolor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(selectedDate?.year == null
                            ? ""
                            : "${selectedDate?.year}"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 2.h),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.primarycolor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                        icon: const Icon(Icons.calendar_month_rounded),
                        onPressed: () {
                          showDatePickers(context);
                        }),
                  ),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return UploadPhoto();
                  }),
                );
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
                  "Next",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showDatePickers(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height * 0.36,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    CupertinoButton(
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    SizedBox(
                      width: 12.w,
                    ),
                    CupertinoButton(
                        child: const Text(
                          "Birthday",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {}),
                  ],
                ),
                SizedBox(
                  height: 22.h,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (value) {
                      if (value != selectedDate) {
                        setState(() {
                          selectedDate = value;
                        });
                      }
                    },
                    initialDateTime: DateTime.now(),
                    minimumYear: 2020,
                    maximumYear: 2025,
                  ),
                ),
                CupertinoButton(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    color: AppColors.primarycolor,
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            ),
          );
        });
  }
}
