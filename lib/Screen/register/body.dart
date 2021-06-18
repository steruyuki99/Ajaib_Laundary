//import 'package:ajaib_laundary/Screen/register/register.dart';
import 'background.dart';
import 'register.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({state}) : _state = state;
  final RegisterScreenState _state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Column(
        children: [
          SizedBox(height: 40.0),
          _buildTextField(
              hint: 'Username',
              icon: Icons.people,
              onChanged: (value) => _state.username = value),
          SizedBox(height: 15.0),
          _buildTextField(
              hint: 'Email',
              icon: Icons.email_outlined,
              onChanged: (value) => _state.email = value),
          SizedBox(height: 15.0),
          _buildTextField(
              hint: 'Password',
              isObsecure: !_state.showPass, 
              icon: Icons.lock,
              button: IconButton(
                  icon: Icon(_state.showPass
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () => _state.showPass = !_state.showPass),
              onChanged: (value) => _state.password = value),
          SizedBox(height: 15.0),
          _buildTextField(
              hint: 'Confirm Password',
              isObsecure: !_state.confirmPass,
              icon: Icons.lock,
              button: IconButton(
                  icon: Icon(_state.confirmPass
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () =>
                      _state.confirmShowPass= !_state.confirmShowPass),
              onChanged: (value) => _state.confirmPass = value),
        ],
      ),
    );
  }
}

TextFormField _buildTextField(
    {hint, icon, isObsecure = false, button, onChanged}) {
  return TextFormField(
    keyboardType: TextInputType.text,
    autofocus: false,
    decoration: InputDecoration(
      hintText: hint,
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      prefixIcon: icon != null ? Icon(icon) : null,
      suffixIcon: button,
    ),
    obscureText: isObsecure,
    onChanged: onChanged,
  );
}
