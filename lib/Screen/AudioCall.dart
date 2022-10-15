import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Constant/Color.dart';
import '../Constant/Images.dart';

class AudioCall extends StatefulWidget {
  final image;
  final name;
  const AudioCall({Key? key, this.image, this.name}) : super(key: key);

  @override
  State<AudioCall> createState() => _AudioCallState();
}

class _AudioCallState extends State<AudioCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.userProfile,
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 4),
            child: Container(
              color: Colors.black.withOpacity(0.4),
              child: Column(
                children: [
                  AppBar(
                    leading: IconButton(
                        icon: const Icon(CupertinoIcons.back),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    title: const Text("Audio Calls"),
                    centerTitle: true,
                  ),
                  const Spacer(),
                  const CircleAvatar(
                      backgroundImage: AssetImage(AppImages.user), radius: 70),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    widget.name,
                    style: const TextStyle(
                        color: AppColors.whitecolor,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  Text(
                    "5:40",
                    style: TextStyle(
                        color: AppColors.whitecolor.withOpacity(0.8),
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  const Spacer(),
                  const Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        heroTag: 1,
                        backgroundColor: Colors.redAccent,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          CupertinoIcons.phone_down_fill,
                          color: AppColors.whitecolor,
                        ),
                      ),
                      FloatingActionButton(
                        heroTag: 2,
                        backgroundColor: AppColors.whitecolor,
                        onPressed: () {},
                        child: const Icon(
                          Icons.keyboard_voice,
                          color: Colors.black,
                        ),
                      ),
                      FloatingActionButton(
                        heroTag: 3,
                        backgroundColor: AppColors.whitecolor,
                        onPressed: () {},
                        child: const Icon(
                          CupertinoIcons.chat_bubble_text,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                ],
              ),
            ),
            // ),
          ),
        ),
      ),
    );
  }
}
