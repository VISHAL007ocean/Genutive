import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genutive/Constant/Color.dart';
import 'package:genutive/CustomWidget/FilterBottomModalSheet.dart';
import 'package:genutive/Screen/HomeScreen/DatingScreen.dart';
import 'package:genutive/Screen/HomeScreen/SocialScreen.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        backgroundColor: AppColors.whitecolor,
        elevation: 0,
        title: const Text(
          "genutive",
          style: TextStyle(color: CupertinoColors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu_outlined,
            ),
            color: CupertinoColors.black,
            onPressed: () {
               AppFilterBottomModalBottomSheet.bottomSheet(context);
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, kToolbarHeight),
          child: TabBar(
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
                text: 'Dating',
              ),
              Tab(
                text: 'Social',
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:   [
          DatingScreen(),
            SocialScreen(),
        ],
      ),
    );
  }
}
