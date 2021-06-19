import 'package:ajaib_laundary/Screen/Laundry/List/list.dart';
import 'package:ajaib_laundary/Screen/register/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ajaib_laundary/Screen/Login/login.dart';
import 'package:ajaib_laundary/main/mainScreen.dart';

Route<dynamic> generateRoute(settings) {
  switch (settings.name) {
    case '/':
    case '/main':
      return MainScreen.route();
    case '/register':
      return RegisterScreen.route();
    case '/login':
      return LoginScreen.route();
    case '/list':
      return ListScreen.route();
  }
  return null;
}
