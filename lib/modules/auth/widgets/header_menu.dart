import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        child: Icon(
          Icons.article_outlined,
          color: Colors.black,
          size: 60,
        ),
      ),
      Container(
        width: 210,
      ),
      Container(
        child: Icon(
          Icons.supervised_user_circle_outlined,
          color: Colors.black,
          size: 60,
        ),
      ),
    ]);
  }
}
