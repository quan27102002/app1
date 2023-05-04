import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TitleFooter extends StatelessWidget {
  const TitleFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Not a member?'),
        TextButton(
          onPressed: () {},
          child: Text(
            'Register now',
            style: TextStyle(color: Colors.red, fontSize: 14),
          ),
        )
      ],
    );
  }
}
