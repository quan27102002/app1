import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SsoItem extends StatelessWidget {
  SsoItem({super.key, required this.link,required this.onPessed});
  final String link;
  final Function onPessed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onPessed(),
      child: Container(
        width: 40,
        height: 40,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(link),
      ),
    );
  }
}
