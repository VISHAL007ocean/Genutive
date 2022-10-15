import 'package:flutter/material.dart';
import 'package:genutive/Constant/Color.dart';
import 'package:genutive/Screen/LoginOptions.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2022/09/16/18/09/bird-7459335__340.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 4, child: Container()),
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            color: AppColors.primarycolor,
                            fontSize: 35,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "to make genuine",
                        style: TextStyle(
                            color: AppColors.whitecolor,
                            fontSize: 35,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "connections",
                        style: TextStyle(
                            color: AppColors.whitecolor,
                            fontSize: 35,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Be proud of who you are and match with people who genuinely care about you",
                        style: TextStyle(
                            color: AppColors.whitecolor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return LoginOptions();
                      }),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                        vertical: 22, horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColors.primarycolor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "Get Started",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
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
