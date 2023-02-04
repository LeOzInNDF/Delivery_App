import 'package:dart_week_delivery_app/app/pages/auth/login/register/register_controller.dart';
import 'package:dart_week_delivery_app/app/pages/auth/login/register/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterRouter {
  RegisterRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => RegisterController(
              context.read(),
            ),
          )
        ],
        child: const RegisterPage(),
      );
}
