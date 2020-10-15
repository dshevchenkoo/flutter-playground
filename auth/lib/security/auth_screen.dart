import 'package:delo2/Model/home_model.dart';
import 'package:delo2/shared/globals.dart';
import 'package:delo2/widgets/button_widget.dart';
import 'package:delo2/widgets/password_field_widget.dart';
import 'package:delo2/widgets/text_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final model = Provider.of<HomeModel>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldWidget("Email", Icons.mail_outline, model.isValid ? Icons.check : null, false, (value) {
                model.isValidEmail(value);
              }),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  PasswordFieldWidget("Password", Icons.lock_outline,
                      model.isVisible
                          ? Icons.visibility
                          : Icons.visibility_off, model.isVisible ? false : true, null),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Forgot password?',
                    style: TextStyle(color: Global.mediumBlue),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ButtonWidget(title: 'Log In', hasBorder: false),
              SizedBox(
                height: 10,
              ),
              ButtonWidget(title: 'Sign Up', hasBorder: true),
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
