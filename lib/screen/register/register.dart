import 'package:flutter/material.dart';
import 'body.dart';

class RegisterScreen extends StatefulWidget {
  static Route route() =>
      MaterialPageRoute(builder: (context) => RegisterScreen());
  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  String _username, _email, _password, _confirmPass;
  bool _showPass = false, _confirmShowPass = false;

  get username => _username;
  set username(value) => setState(() => _username = value);

  get password => _password;
  set password(value) => setState(() => _password = value);

  get confirmPass => _confirmPass;
  set confirmPass(value) => setState(() => _confirmPass = value);

  get email => _email;
  set email(value) => setState(() => _email = value);

  get showPass => _showPass;
  set showPass(value) => setState(() => _showPass = value);

  get confirmShowPass => _confirmShowPass;
  set confirmShowPass(value) => setState(() => _confirmShowPass = value);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Body(
        state: this,
      ),
    ));
  }
}
