import 'package:clone_myapp/modules/auth/widgets/Item.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class List_Item extends StatelessWidget {
  const List_Item({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(children: [
        Item()
      ],),
    );
  }
}