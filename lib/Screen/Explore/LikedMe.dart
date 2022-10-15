import 'package:flutter/material.dart';
import 'package:genutive/Constant/Color.dart';
import 'package:sizer/sizer.dart';

final List _data = [
  {
    "Title": "Batman",
    "Poster":
        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  },
  {
    "Title": "The Dark",
    "Poster":
        'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  },
  {
    "Title": "Dawn",
    "Poster":
        'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  },
  {
    "Title": "The Dark",
    "Poster":
        'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  },
  {
    "Title": "Batman Movie",
    "Poster":
        'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  },
  {
    "Title": "Robin",
    "Poster":
        'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  },
];

class LikedMe extends StatefulWidget {
  const LikedMe({Key? key}) : super(key: key);

  @override
  State<LikedMe> createState() => _LikedMeState();
}

class _LikedMeState extends State<LikedMe> {
  @override
  Widget build(BuildContext context) {
    return LikedMee(context);
  }
}

Widget LikedMee(BuildContext context) {
  return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 10,
              direction: Axis.horizontal,
              children: _data.map((item) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 0.5.h),
                          height: MediaQuery.of(context).size.width * 0.6,
                          width: MediaQuery.of(context).size.width * 0.44,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(
                                item['Poster'],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 1.5.h, left: 2.w),
                          padding: EdgeInsets.symmetric(
                              vertical: 0.4.h, horizontal: 2.w),
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Text(
                            "500 miles",
                            style: TextStyle(
                                fontSize: 14, color: AppColors.whitecolor),
                          ),
                        )
                      ],
                    ),
                    Text(
                      item['Title'],
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    )
                  ],
                );
              }).toList())));
}
