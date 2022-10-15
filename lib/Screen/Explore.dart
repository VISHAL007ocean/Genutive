import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Constant/Color.dart';
import 'package:genutive/Screen/Explore/LikedMe.dart';
import 'package:genutive/Screen/Explore/Matches.dart';
import 'package:genutive/Screen/Explore/Passed.dart';
import 'package:genutive/Screen/Explore/UnMatched.dart';
import 'package:genutive/Screen/HomeScreen/DatingScreen.dart';
import 'package:genutive/Screen/HomeScreen/SocialScreen.dart';
import 'package:sizer/sizer.dart';

import 'Explore/Liked.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        backgroundColor: AppColors.whitecolor,
        elevation: 0,
        title: const Text(
          "Explore",
          style: TextStyle(color: CupertinoColors.black),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, kToolbarHeight),
          child: TabBar(
            isScrollable: true,
            labelColor: CupertinoColors.black,
            unselectedLabelColor: CupertinoColors.black,
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
            indicator: BoxDecoration(
              color: AppColors.primarycolor,
              borderRadius: BorderRadius.circular(12),
            ),
            controller: _tabController,
            tabs: const [
              Tab(
                iconMargin: EdgeInsets.zero,
                text: 'Liked me',
              ),
              Tab(
                text: 'Matches',
              ),
              Tab(
                text: 'Passed',
              ),
              Tab(
                text: 'Liked',
              ),
              Tab(
                text: 'Unmatched',
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          LikedMe(),
          Matches(),
          Passed(),
          Liked(),
          UnMatched(),
        ],
      ),
    );
  }
}
