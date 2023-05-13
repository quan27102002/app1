import 'package:clone_myapp/modules/auth/widgets/header_menu.dart';
import 'package:clone_myapp/modules/auth/widgets/list_item.dart';
import 'package:clone_myapp/modules/auth/widgets/search_bar.dart';
import 'package:clone_myapp/themes/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShopList extends StatelessWidget {
  const ShopList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 72, left: 26),
        child: Column(
          children: [
            HeaderMenu(),
            Spacing.h24,
            SearchBar(),
            Spacing.h42,
            Container(
              width: double.infinity,
              child: Text(
                
                'EXPLORE',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            List_Item()
          ],
        ),
      ),
    );
  }

  
}
