import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        _buildBackGround(),
        Container(
          padding: EdgeInsets.all(8),
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
        ),
        
      ],
    );
  }

  Widget _buildBackGround() {
    return SizedBox(
      child: Container(
        child: Container(
          width: 200,
          height: 280,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/card.png')),
              borderRadius: BorderRadius.circular(25),
              color: Colors.black),
        ),
      ),
    );
  }
}
