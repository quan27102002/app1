import 'package:clone_myapp/modules/auth/widgets/auth_title.dart';
import 'package:clone_myapp/modules/auth/widgets/login_form.dart';
import 'package:clone_myapp/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackGround(),
          SafeArea(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 150,
                  child: AuthTitle(
                    title: 'Welcome',
                    subTitle: 'Hello, let sign into your account!',
                    
                  ),
                ),
                LoginForm()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBackGround() {
    return Container(
        width: double.maxFinite,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.mainBackground,
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: AspectRatio(
              aspectRatio: 390 / 150,
              child: Image.asset(
                'assets/images/login.png',
                fit: BoxFit.fill,
              )),
        ));
  }
}
