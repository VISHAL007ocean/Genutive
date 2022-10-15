import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Screen/ChangePassword.dart';
import 'package:sizer/sizer.dart';

import '../Constant/Color.dart';
import 'ChangeEmail.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool state = false;
  bool state2 = false;

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
          "Settings",
          style: TextStyle(color: CupertinoColors.black),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
        children: [
          listTilePadding(),
          ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            tileColor: const Color(0xfff1f4f6),
            title: const Text(
              "Notifications",
              style: TextStyle(fontSize: 18),
            ),
            trailing: CupertinoSwitch(
              activeColor: AppColors.primarycolor,
              trackColor: const Color(0xffadb6c7),
              value: state,
              onChanged: (value) {
                state = value;
                setState(
                  () {},
                );
              },
            ),
          ),
          listTilePadding(),
          ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            tileColor: const Color(0xfff1f4f6),
            title: const Text(
              "Location Tracking",
              style: TextStyle(fontSize: 18),
            ),
            trailing: CupertinoSwitch(
              trackColor: const Color(0xffadb6c7),
              activeColor: AppColors.primarycolor,
              value: state2,
              onChanged: (value) {
                state2 = value;
                setState(
                  () {},
                );
              },
            ),
          ),
          listTilePadding(),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return ChangeEmail();
                }),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            tileColor: const Color(0xfff1f4f6),
            title: const Text(
              "Change Email",
              style: TextStyle(fontSize: 18),
            ),
          ),
          listTilePadding(),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ChangePassword();
                  },
                ),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            tileColor: const Color(0xfff1f4f6),
            title: const Text(
              "Change Password",
              style: TextStyle(fontSize: 18),
            ),
          ),
          listTilePadding(),
          ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            tileColor: const Color(0xfff1f4f6),
            title: const Text(
              "About us",
              style: TextStyle(fontSize: 18),
            ),
            trailing: IconButton(
              icon: const Icon(CupertinoIcons.forward),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          settingButton("Logout", AppColors.primarycolor),
          settingButton(
            "Deactivate my account",
            Color(0xfff1f4f6),
          ),
        ],
      ),
    );
  }

  Widget listTilePadding() {
    return SizedBox(
      height: 2.h,
    );
  }

  Widget settingButton(String title, Color color) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26.withOpacity(0.2),
                  offset: const Offset(0, 4),
                  blurRadius: 0.5,
                  spreadRadius: 0.5)
            ]),
        child: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
