import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Constant/Color.dart';
import 'package:sizer/sizer.dart';

class VideoCall extends StatefulWidget {
  final image;
  final name;
  const VideoCall({Key? key, this.image, this.name}) : super(key: key);

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                widget.image,
              ),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 6.h,
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
              Row(
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
                      CupertinoIcons.chat_bubble_text,
                      color: Colors.black,
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: 3,
                    backgroundColor: AppColors.whitecolor,
                    onPressed: () {},
                    child: const Icon(
                      Icons.keyboard_voice,
                      color: Colors.black,
                    ),
                  ),
                  FloatingActionButton.extended(
                    heroTag: 4,
                    backgroundColor: AppColors.whitecolor,
                    onPressed: () {},
                    label: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.videocam_rounded,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(
                            CupertinoIcons.arrow_2_circlepath,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ],
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
      ),
    );
  }
}
