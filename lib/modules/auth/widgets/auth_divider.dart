import 'package:clone_myapp/themes/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 42,
          height: 1,
          // color: Colors.black45,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black87, Colors.transparent],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft)),
        ),
        Spacing.v8,
        Text('Or continue with'),
        Spacing.v8,
        Container(
          width: 42,
          height: 1,
       
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black87, Colors.transparent],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight)),
        ),
      ],
    );
  }
}
