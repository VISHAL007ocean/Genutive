import 'package:flutter/material.dart';

import 'LikedMe.dart';

class UnMatched extends StatefulWidget {
  const UnMatched({Key? key}) : super(key: key);

  @override
  State<UnMatched> createState() => _UnMatchedState();
}

class _UnMatchedState extends State<UnMatched> {
  @override
  Widget build(BuildContext context) {
    return LikedMee(context);
  }
}
