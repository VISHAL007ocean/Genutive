import 'package:flutter/material.dart';

import 'LikedMe.dart';

class Passed extends StatefulWidget {
  const Passed({Key? key}) : super(key: key);

  @override
  State<Passed> createState() => _PassedState();
}

class _PassedState extends State<Passed> {
  @override
  Widget build(BuildContext context) {
    return LikedMee(context);
  }
}
