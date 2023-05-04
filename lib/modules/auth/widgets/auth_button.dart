import 'package:clone_myapp/themes/app_colors.dart';
import 'package:clone_myapp/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key,required this.title,required this.onFress});
  final String title;
  final Function onFress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onFress();
      },
      child: Text(
        title,
        style: TextStyles.t20M,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary500,
          padding: EdgeInsets.all(16),
          minimumSize: Size(double.maxFinite, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
