import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Screen/BottomNavigationBar.dart';
import 'package:genutive/Screen/NameScreen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

import '../../Constant/Color.dart';
import '../../Helper/Helper.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
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
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: const Text(
          "Change Email",
          style: TextStyle(color: CupertinoColors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h, bottom: 2.h),
            child: const Center(
              child: Text(
                "00:49",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                    text:
                        "Type the verification code we've sent you\nto email "),
                TextSpan(
                    text: 'genutive@gmail.com',
                    style: TextStyle(
                      color: Color(0xff797f27),
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          Visibility(
            child: Padding(
              padding: EdgeInsets.only(
                top: 6.h,
                right: 24.0,
                left: 24.0,
              ),
              child: PinCodeTextField(
                length: 6,
                appContext: context,
                keyboardType: TextInputType.phone,
                backgroundColor: Colors.transparent,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 40,
                    fieldWidth: 40,
                    activeColor: AppColors.primarycolor,
                    activeFillColor: isDarkMode(context)
                        ? Colors.grey.shade700
                        : Colors.grey.shade100,
                    selectedFillColor: Colors.transparent,
                    selectedColor: AppColors.primarycolor,
                    inactiveColor: Colors.grey.shade600,
                    inactiveFillColor: Colors.transparent),
                enableActiveFill: true,
                onCompleted: (v) {},
                onChanged: (value) {
                  log(value);
                },
              ),
            ),
          ),
          Spacer(),
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
    );
  }
}
