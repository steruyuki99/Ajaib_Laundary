import 'package:flutter/material.dart';
import 'body.dart';

class ListScreen extends StatefulWidget {
  static Route route() => MaterialPageRoute(builder: (context) => ListScreen());
  @override
  ListScreenState createState() => ListScreenState();
}

class ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Body(
        // state: this,
      ),
    ));
  }
}
