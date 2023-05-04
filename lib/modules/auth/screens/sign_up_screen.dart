import 'package:clone_myapp/modules/auth/widgets/auth_title.dart';
import 'package:clone_myapp/modules/auth/widgets/login_form.dart';
import 'package:clone_myapp/modules/auth/widgets/sign_up_form.dart';
import 'package:clone_myapp/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:ui';

class SignUpScreen extends StatelessWidget {
 const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: SingleChildScrollView(
     child: Stack(
          children: [
            _buildBackGround(),
            SafeArea(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 150,
                    child: AuthTitle(
                      title: 'Sign Up',
                      subTitle: 'Create your Account!',
                      
                    ),
                  ),
                  SignUpForm()
                ],
              ),
            )
          ],
        ),
   ),
    );
  }

  Widget _buildBackGround() {
    return Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.mainBackground,
        ),
        child: Align(
          
          alignment: Alignment.topLeft,
          child: AspectRatio(
              aspectRatio: 390 / 200,
              child: Image.asset(
                'assets/images/login.png',
                height: 100,
                fit: BoxFit.fill,
              )),
        ));
    
  }
}