import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mainList.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text("Customer's Order"));
  }
}
