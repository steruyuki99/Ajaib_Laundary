import 'package:ajaib_laundary/Screen/register/background.dart';

import 'register.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({state}) : _state = state;
  final RegisterScreenState _state;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: 350,
            child: _buildTextField(
                hint: 'username',
                icon: Icons.people,
                onChanged: (value) => _state.username = value),
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: 350,
            child: _buildTextField(
                hint: 'email',
                icon: Icons.email_outlined,
                onChanged: (value) => _state.email = value),
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: 350,
            child: _buildTextField(
                hint: 'password',
                isObsecure: _state.showPass,
                icon: Icons.lock,
                 button: IconButton(
                icon: Icon(_state.showPass
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () =>
                    _state.showPass = !_state.showPass),
                onChanged: (value) => _state.password = value),
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: 350,
             child: _buildTextField(
                hint: 'Confirm Password',
                isObsecure: _state.confirmShowPass,
                icon: Icons.lock,
                 button: IconButton(
                icon: Icon(_state.confirmShowPass
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () =>
                    _state.confirmShowPass = !_state.confirmShowPass),
                onChanged: (value) => _state.confirmPass = value),
          ),
          SizedBox(height: size.height * 0.04),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            width: 140,
            child: TextButton(
              child: Text(
                'Register',
                style: TextStyle(
                    fontFamily: 'Futura',
                    fontSize: 20,
                    color: Color(0xFF4BAFBE)),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

TextField _buildTextField({hint, icon, isObsecure = false, button, onChanged}) {
  return TextField(
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      hintText: hint,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        borderSide: BorderSide(color: Colors.grey[300], width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: Colors.blue[300]),
      ),
      prefixIcon: icon != null ? Icon(icon) : null,
      suffixIcon: button,
      hintStyle: TextStyle(fontFamily: 'Futura'),
    ),
    obscureText: isObsecure,
    onChanged: onChanged,
  );
}
