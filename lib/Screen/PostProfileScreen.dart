import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Constant/Color.dart';
import 'package:sizer/sizer.dart';

class PostProfileScreen extends StatefulWidget {
  const PostProfileScreen({Key? key}) : super(key: key);

  @override
  State<PostProfileScreen> createState() => _PostProfileScreenState();
}

class _PostProfileScreenState extends State<PostProfileScreen> {
  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 38.h),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            bottomDetailsSheet(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.w),
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.whitecolor),
              ),
              child: IconButton(
                icon: const Icon(
                  CupertinoIcons.back,
                  color: CupertinoColors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomDetailsSheet() {
    return DraggableScrollableSheet(
      initialChildSize: .5,
      minChildSize: .3,
      maxChildSize: .7,
      builder: (BuildContext context, ScrollController scrollController) {
        return Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5.h),
              decoration: BoxDecoration(
                color: AppColors.whitecolor,
                borderRadius: BorderRadius.circular(28),
              ),
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 6.h),
                controller: scrollController,
                children: [
                  const ListTile(
                    title: Text(
                      "Nick, 23",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      "Author Motivator",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Location",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: Container(
                      height: 4.h,
                      width: 26.w,
                      decoration: BoxDecoration(
                        color: AppColors.whitecolor,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.location_on_rounded,
                            color: AppColors.primarycolor,
                          ),
                          Text(
                            "50 miles",
                            style: TextStyle(
                                color: AppColors.primarycolor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    subtitle: const Text(
                      "Chicago , United States",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      "About",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Interest",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [choiceChip(), choiceChip(), choiceChip()],
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      "Gallery",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: Text(
                      "See all",
                      style: TextStyle(
                          color: AppColors.primarycolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    height: 32.h,
                    child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        itemCount: 5,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(12.0)),
                            padding: EdgeInsets.symmetric(vertical: 1.h),
                            margin: EdgeInsets.symmetric(
                                vertical: 0.5.h, horizontal: 1.5.w),
                          );
                        }),
                  ),
                  ListTile(
                    title: const Text(
                      "Basics",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        choiceChips(),
                        choiceChips(),
                        choiceChips(),
                        choiceChips()
                      ],
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Identifies as",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Row(
                      children: [
                        choiceChipss(),
                      ],
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      "Ready to date someone who\nidentifies as",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Row(
                      children: [
                        choiceChipss(),
                        choiceChipss(),
                        choiceChipss(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cardButton(
                    Icons.close, () {}, AppColors.whitecolor, Colors.redAccent),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 6.0,
                      ),
                    ],
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.whitecolor, width: 8),
                  ),
                  child: cardButton(Icons.favorite_rounded, () {},
                      AppColors.primarycolor, AppColors.whitecolor),
                ),
                cardButton(
                    Icons.star, () {}, AppColors.whitecolor, Colors.purple),
              ],
            ),
          ],
        );
      },
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

  Widget choiceChips() {
    return const ChoiceChip(
        side: BorderSide(
            style: BorderStyle.solid, width: 2, color: AppColors.whitecolor),
        disabledColor: AppColors.whitecolor,
        backgroundColor: AppColors.whitecolor,
        label: Text(
          "Xyz",
          style: TextStyle(
              color: AppColors.primarycolor,
              fontSize: 17,
              fontWeight: FontWeight.w400),
        ),
        selected: false);
  }

  Widget choiceChipss() {
    return const ChoiceChip(
        side: BorderSide(
            style: BorderStyle.solid, width: 2, color: AppColors.whitecolor),
        disabledColor: AppColors.primarycolor,
        backgroundColor: AppColors.whitecolor,
        label: Text(
          "Diabities",
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),
        ),
        selected: false);
  }

  Widget cardButton(
      IconData icon, VoidCallback onTap, Color color, Color iconColor) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
      decoration:
          BoxDecoration(color: color, shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 6.0,
        ),
      ]),
      child: IconButton(
          icon: Icon(icon, size: 35.0), onPressed: onTap, color: iconColor),
    );
  }
}
