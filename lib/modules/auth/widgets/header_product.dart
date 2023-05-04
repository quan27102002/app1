import 'package:clone_myapp/themes/spacing.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class HeaderProduct extends StatelessWidget {
  const HeaderProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Spacing.h42,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
           
                  Icon(
                    Icons.arrow_back,
                    size: 40,
                  ),
                  Spacing.v16,
                  Text(
                    'Product',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                   
                  ),
                  Spacing.v16,
                  Icon(Icons.trolley,size: 40,)
                ],
              )
            ],
          ) ;
  }
}