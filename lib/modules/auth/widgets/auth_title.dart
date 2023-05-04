// ignore_for_file: unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:clone_myapp/themes/app_colors.dart';
import 'package:clone_myapp/themes/text_styles.dart';
// ignore: unused_import

// ignore: unused_import

class AuthTitle  extends StatelessWidget {
  const AuthTitle ({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyles.t32M.copyWith(
              color: AppColors.primary500, decoration: TextDecoration.none),
          textAlign: TextAlign.center,
        ),
        Text(
          subTitle,
          style: TextStyles.t20T.copyWith(
              color: Color.fromRGBO(34, 49, 63, 1),
              decoration: TextDecoration.none),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
