import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

import '../Constant/Color.dart';
import 'IntrestScreen.dart';

File? _image;

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  final ImagePicker _imagePicker = ImagePicker();
  List<XFile>? imagefiles;
  var imgListLength = 0;
  var path =
      '/data/user/0/com.example.genutive/cache/image_picker7410712877345327255.jpg';
  Future<void> multipicker() async {
    try {
      var pickedfiles = await _imagePicker.pickMultiImage();
      if (pickedfiles != null) {
        imagefiles = pickedfiles;
        imgListLength = imagefiles?.length ?? 0;
        setState(() {});
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking file.");
    }
  }

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
              padding: EdgeInsets.only(
                  top: 6.h, bottom: 2.h, left: 15.w, right: 8.w),
              child: Column(
                children: [
                  const Text(
                    "Upload your photos",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: 60.w,
                    color: AppColors.primarycolor,
                    height: 0.3.h,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 3.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              log("${_image?.path}");
                              print(_image?.path);
                              onCameraClick();
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 13.2.h, horizontal: 30.w),
                              decoration: BoxDecoration(
                                color: AppColors.primarycolor,
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: FileImage(File("${_image?.path}")),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 18.w,
                            top: 8.h,
                            child: _image == null
                                ? Icon(Icons.camera_alt_rounded, size: 80.sp)
                                : Container(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(
                                  left: 3.w, top: 0.5.h, bottom: 0.5.h),
                              padding: EdgeInsets.symmetric(
                                  vertical: (imgListLength > 4) ? 6.4.h : 4.5.h,
                                  horizontal:
                                      (imgListLength > 4) ? 14.w : 10.w),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: FileImage((imgListLength > 4)
                                        ? File(imagefiles?[4].path ?? "")
                                        : File("")),
                                    fit: BoxFit.cover),
                              ),
                              child: (imgListLength > 4)
                                  ? Container()
                                  : Icon(
                                      Icons.add,
                                      size: 25.sp,
                                    )),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 3.w, top: 0.5.h, bottom: 0.5.h),
                              padding: EdgeInsets.symmetric(
                                  vertical: (imgListLength > 4) ? 6.4.h : 4.5.h,
                                  horizontal:
                                      (imgListLength > 4) ? 14.w : 10.w),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: FileImage((imgListLength > 0)
                                        ? File(imagefiles?[0].path ?? "")
                                        : File("")),
                                    fit: BoxFit.cover),
                              ),
                              child: (imgListLength > 0)
                                  ? Container()
                                  : Icon(
                                      Icons.add,
                                      size: 25.sp,
                                    )),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 2.w, top: 1.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(top: 0.5.h, bottom: 0.5.h),
                            padding: EdgeInsets.symmetric(vertical: 3.5.h),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: FileImage((imgListLength > 1)
                                      ? File(imagefiles?[1].path ?? "")
                                      : File("")),
                                  fit: BoxFit.cover),
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              icon: (imgListLength > 1)
                                  ? Container()
                                  : Icon(
                                      Icons.add,
                                      size: 25.sp,
                                    ),
                              onPressed: () {
                                multipicker();
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 2.w, top: 0.5.h, bottom: 0.5.h),
                            padding: EdgeInsets.symmetric(vertical: 3.5.h),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: FileImage((imgListLength > 2)
                                      ? File(imagefiles?[2].path ?? "")
                                      : File("")),
                                  fit: BoxFit.cover),
                            ),
                            child: IconButton(
                              icon: (imgListLength > 2)
                                  ? Container()
                                  : Icon(
                                      Icons.add,
                                      size: 25.sp,
                                    ),
                              onPressed: () {
                                multipicker();
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 2.w, top: 0.5.h, bottom: 0.5.h),
                            padding: EdgeInsets.symmetric(vertical: 3.5.h),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: FileImage((imgListLength > 3)
                                      ? File(imagefiles?[3].path ?? "")
                                      : File("")),
                                  fit: BoxFit.cover),
                            ),
                            child: IconButton(
                              icon: (imgListLength > 3)
                                  ? Container()
                                  : Icon(
                                      Icons.add,
                                      size: 25.sp,
                                    ),
                              onPressed: () {
                                multipicker();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return SelectInterest();
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

  onCameraClick() {
    final action = CupertinoActionSheet(
      message: const Text(
        'Upload profile picture',
        style: TextStyle(fontSize: 15.0),
      ),
      actions: <Widget>[
        CupertinoActionSheetAction(
          isDefaultAction: false,
          onPressed: () async {
            Navigator.pop(context);
            XFile? image =
                await _imagePicker.pickImage(source: ImageSource.gallery);
            if (image != null) {
              setState(() {
                _image = File(image.path);
              });
            }
          },
          child: const Text('Choose from gallery'),
        ),
        CupertinoActionSheetAction(
          isDestructiveAction: false,
          onPressed: () async {
            Navigator.pop(context);
            XFile? image =
                await _imagePicker.pickImage(source: ImageSource.camera);
            if (image != null) {
              setState(() {
                _image = File(image.path);
              });
            }
          },
          child: const Text('Take a picture'),
        ),
        CupertinoActionSheetAction(
          isDestructiveAction: true,
          onPressed: () async {
            Navigator.pop(context);
            setState(() {
              _image;
            });
          },
          child: const Text('Remove picture'),
        )
      ],
      cancelButton: CupertinoActionSheetAction(
        child: const Text('Cancel'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
    showCupertinoModalPopup(context: context, builder: (context) => action);
  }
}
