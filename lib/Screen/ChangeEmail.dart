import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Constant/Color.dart';
import 'package:genutive/Screen/HomeScreen/VerifyEmail.dart';
import 'package:sizer/sizer.dart';

class ChangeEmail extends StatefulWidget {
  const ChangeEmail({Key? key}) : super(key: key);

  @override
  State<ChangeEmail> createState() => _ChangeEmailState();
}

class _ChangeEmailState extends State<ChangeEmail> {
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
            child: Column(
              children: [
                const Text(
                  "If you want to change your email, you will need to verify it with a verification code, sent to\nindicated email",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4d4d4d),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: double.infinity),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    textInputAction: TextInputAction.done,
                    style: const TextStyle(fontSize: 18),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: AppColors.primarycolor,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(left: 16, right: 16),
                      hintText: 'E-mail',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                            color: AppColors.primarycolor, width: 2.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).errorColor),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).errorColor),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return VerifyEmail();
                  },
                ),
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
    );
  }
}
