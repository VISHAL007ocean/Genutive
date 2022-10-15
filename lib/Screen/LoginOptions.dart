import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Screen/LoginWithMobile.dart';
import 'package:sizer/sizer.dart';

import '../Constant/Color.dart';

class LoginOptions extends StatefulWidget {
  const LoginOptions({Key? key}) : super(key: key);

  @override
  State<LoginOptions> createState() => _LoginOptionsState();
}

class _LoginOptionsState extends State<LoginOptions> {
  bool value = false;
  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 22.h),
                alignment: Alignment.center,
                child: const Text("Logo"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return LoginWithMobile();
                    }),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "Use cell phone number",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.whitecolor),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const LoginOptions();
                          }),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 1.2.h),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.whitecolor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.star),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const LoginOptions();
                          }),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 1.2.h),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.whitecolor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.star),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return const LoginOptions();
                          }),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 1.2.h),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.whitecolor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.star),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.black,
                    value: value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  const Text(
                      "Checking this box, you are acknowledging\nthat you are 18 years or older"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.black,
                    value: value2,
                    onChanged: (bool? value2) {
                      setState(() {
                        this.value2 = value2!;
                      });
                    },
                  ),
                  const Text(
                      "Checking this box, you confirm that you\nagree Privacy and Terms"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
