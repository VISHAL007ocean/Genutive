import 'package:flutter/material.dart';
import 'package:genutive/Screen/Explore/LikedMe.dart';

class Matches extends StatefulWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  @override
  Widget build(BuildContext context) {
    return LikedMee(context);
  }
}
