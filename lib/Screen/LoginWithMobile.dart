import 'package:flutter/material.dart';
import 'package:genutive/Constant/Color.dart';
import 'package:genutive/Screen/VerifyOtp.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:sizer/sizer.dart';

class LoginWithMobile extends StatefulWidget {
  const LoginWithMobile({Key? key}) : super(key: key);

  @override
  State<LoginWithMobile> createState() => _LoginWithMobileState();
}

class _LoginWithMobileState extends State<LoginWithMobile> {
  String? phoneNumber;
  bool isPhoneValid = false;

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
          "Sign In",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 6.h, bottom: 2.h),
                child: const Text(
                  "What is your phone\nnumber?",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
              ),
              const Text(
                "We Will send you OTP to verify your\nphone number",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              Visibility(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 16.0, right: 8.0, left: 8.0, bottom: 14.h),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.grey.shade300)),
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) =>
                          phoneNumber = number.phoneNumber,
                      onInputValidated: (bool value) => isPhoneValid = value,
                      ignoreBlank: true,
                      // autoValidateMode: AutovalidateMode.onUserInteraction,
                      inputDecoration: const InputDecoration(
                        hintText: "Phone Number",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        isDense: true,
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                      inputBorder: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      initialValue: PhoneNumber(isoCode: 'IN'),
                      selectorConfig: const SelectorConfig(
                          selectorType: PhoneInputSelectorType.DIALOG),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return VerifyOtpScreen();
                    }),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: AppColors.primarycolor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
