import 'package:flutter/material.dart';

import 'mainList.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder:(context, index) => ListTile(
        title: Text('Booking'),
        subtitle: Text('name'),
      ),
    );
  }
}