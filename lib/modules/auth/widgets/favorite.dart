import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(1)),
        color: Color.fromRGBO(255,255,255,1),
      ),
      child: Icon(
        Icons.favorite,
        color: Colors.pink,
        size: 60,
      ),
    );
  }
}
