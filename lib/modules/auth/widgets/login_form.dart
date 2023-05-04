import 'package:clone_myapp/modules/auth/screens/sign_up_screen.dart';
import 'package:clone_myapp/modules/auth/widgets/Infor_field.dart';
import 'package:clone_myapp/modules/auth/widgets/auth_button.dart';
import 'package:clone_myapp/modules/auth/widgets/auth_divider.dart';
import 'package:clone_myapp/modules/auth/widgets/password_field.dart';
import 'package:clone_myapp/modules/auth/widgets/sso_item.dart';
import 'package:clone_myapp/modules/auth/widgets/title_footer.dart';
import 'package:clone_myapp/themes/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  TextEditingController _userNameController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          InforField(
            controller: _userNameController,
            hinText: 'Enter name',
          ),
          Spacing.h16,
          PasswordField(
            hinText: 'Enter your password',
            controller: TextEditingController(),
          ),
          Container(
              width: double.maxFinite,
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: Text('Recovery Password'),
              )),
          Spacing.h32,
          AuthButton(
            title: 'Đăng nhập',
            onFress: () {
              print('Đăng nhập');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  SignUpScreen()),
              );
            },
          ),
          Spacing.h32,
          AuthDivider(),
          Spacing.h32,
          Row(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              SsoItem(link: 'assets/images/google.png', onPessed: () {}),
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              SsoItem(
                link: 'assets/images/google.png',
                onPessed: () {},
              ),
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              SsoItem(link: 'assets/images/google.png', onPessed: () {}),
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
            ],
          ),
          Spacing.h32,
          Container(child: TitleFooter()),
        ],
      ),
    );
  }
}
