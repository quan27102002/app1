import 'package:clone_myapp/modules/auth/widgets/auth_title.dart';
import 'package:clone_myapp/modules/auth/widgets/favorite.dart';
import 'package:clone_myapp/modules/auth/widgets/header_product.dart';
import 'package:clone_myapp/modules/auth/widgets/login_form.dart';
import 'package:clone_myapp/themes/app_colors.dart';
import 'package:clone_myapp/themes/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackGround(),
          Column(
            children: [
              HeaderProduct(),
              Favorite()
            ],
          ),
          
          
        ],
      ),
    );
  }

  Widget _buildBackGround() {
    return Container(
      child: Container(
        width: double.maxFinite,
        height: 500,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/images/title.png')),
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
