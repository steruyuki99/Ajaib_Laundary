//import 'package:ajaib_laundary/Screen/register/register.dart';
import 'background.dart';
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
           SizedBox(height: size.height * 0.01),
        SizedBox(
          width: 350,
          child: TextField(
              decoration: InputDecoration(
                  hintText: 'e-mail',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.grey[300], width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue[300]),
                  ),
                  hintStyle: TextStyle(fontFamily: 'Futura')),
              onChanged: (value) {}),
        ),
          Text(
            'AJ Laundary',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
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
              //isObsecure: !_state.showPass,
              icon: Icons.lock,
              /*button: IconButton(
                  icon: Icon(_state.showPass
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () => _state.showPass = !_state.showPass),*/
              onChanged: (value) => _state.password = value),
          SizedBox(height: 15.0),
          _buildTextField(
              hint: 'Confirm Password',
              //isObsecure: !_state.confirmPass,
              icon: Icons.lock,
              /* button: IconButton(
                 icon: Icon(_state.confirmPass
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () => {},
                     // _state.confirmShowPass= !_state.confirmShowPass
                     ),*/
              onChanged: (value) => _state.confirmPass = value),
        ],
      ),
    );
  }
}

TextFormField _buildTextField(
    {hint, icon, isObsecure = false, button, onChanged}) {
  return TextFormField(
    decoration: InputDecoration(
      hintText: hint,
      prefixIcon: icon != null ? Icon(icon) : null,
      suffixIcon: button,
    ),
    obscureText: isObsecure,
    onChanged: onChanged,
  );
}
