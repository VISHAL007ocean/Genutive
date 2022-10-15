import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/CustomWidget/CustomBottomModalSheet.dart';
import 'package:genutive/Model/MyBasicsModel.dart';
import 'package:sizer/sizer.dart';

import '../Constant/Color.dart';
import '../Constant/Images.dart';

class EditInfoScreen extends StatefulWidget {
  const EditInfoScreen({Key? key}) : super(key: key);

  @override
  State<EditInfoScreen> createState() => _EditInfoScreenState();
}

class _EditInfoScreenState extends State<EditInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        backgroundColor: AppColors.whitecolor,
        leading: IconButton(
            icon: const Icon(
              CupertinoIcons.back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        elevation: 0,
        title: const Text(
          "genutive",
          style: TextStyle(color: CupertinoColors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text(
              "My Photos",
              style: TextStyle(
                  color: Color(0xff797f27),
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              "Pick your most geneuine photos",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 1.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 13.2.h, horizontal: 30.w),
                              decoration: BoxDecoration(
                                color: AppColors.primarycolor,
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                  image: AssetImage(AppImages.userProfile),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 18.w,
                            top: 8.h,
                            child: Container(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 3.w, top: 0.5.h, bottom: 0.5.h),
                            padding: EdgeInsets.symmetric(
                                vertical: 4.5.h, horizontal: 10.w),
                            decoration: BoxDecoration(
                              color: const Color(0xfff1f4f6),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 25.sp,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 3.w, top: 0.5.h, bottom: 0.5.h),
                            padding: EdgeInsets.symmetric(
                                vertical: 4.5.h, horizontal: 10.w),
                            decoration: BoxDecoration(
                              color: const Color(0xfff1f4f6),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 25.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 4.w, top: 1.h, left: 4.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 0.5.h, bottom: 0.5.h),
                          padding: EdgeInsets.symmetric(vertical: 4.5.h),
                          decoration: BoxDecoration(
                            color: const Color(0xfff1f4f6),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 25.sp,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 2.w, top: 0.5.h, bottom: 0.5.h),
                          padding: EdgeInsets.symmetric(vertical: 4.5.h),
                          decoration: BoxDecoration(
                            color: const Color(0xfff1f4f6),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 25.sp,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 2.w, top: 0.5.h, bottom: 0.5.h),
                          padding: EdgeInsets.symmetric(vertical: 4.5.h),
                          decoration: BoxDecoration(
                            color: const Color(0xfff1f4f6),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 25.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const ListTile(
            title: Text(
              "My bio",
              style: TextStyle(
                  color: Color(0xff797f27),
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              "Write a geneuine intro about you",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            padding: EdgeInsets.only(bottom: 6.h, left: 4.w),
            decoration: BoxDecoration(
              color: const Color(0xfff1f4f6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "My geneuine story is...",
                border: InputBorder.none,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              "Interests",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            subtitle: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 3.w),
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
              decoration: BoxDecoration(
                color: const Color(0xfff1f4f6),
                borderRadius: BorderRadius.circular(12),
              ),
              child: choiceChip(),
            ),
          ),
          const ListTile(
            title: Text(
              "My basics",
              style: TextStyle(
                  color: Color(0xff797f27),
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 70.h,
            child: myBasic(),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
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
    );
  }

  Widget choiceChip() {
    return const ChoiceChip(
        side: BorderSide(
            style: BorderStyle.solid, width: 2, color: AppColors.primarycolor),
        disabledColor: AppColors.whitecolor,
        backgroundColor: AppColors.whitecolor,
        label: Text(
          "Gaming",
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),
        ),
        selected: false);
  }

  Widget listTile(
      IconData icon, String title, trailingTitle, VoidCallback onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 18),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            trailingTitle,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
          IconButton(
            onPressed: onTap,
            icon: Icon(CupertinoIcons.forward),
          ),
        ],
      ),
    );
  }

  Widget myBasic() {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: basicList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(
              basicList[index].icon,
              size: 30,
            ),
            title: Text(
              basicList[index].title,
              style: const TextStyle(color: Colors.black, fontSize: 18),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  basicList[index].subtitle,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
                IconButton(
                  onPressed: () {
                    AppBottomModalBottomSheet.bottomSheet(
                        context,
                        basicList[index].title,
                        basicList[index].list.length,
                        basicList,
                        basicList[index].list);
                  },
                  icon: const Icon(CupertinoIcons.forward),
                ),
              ],
            ),
          );
        });
  }
}
