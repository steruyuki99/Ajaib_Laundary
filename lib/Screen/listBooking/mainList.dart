
import 'package:flutter/material.dart';
import 'bar.dart';
import 'body.dart';
class ListBookingScreen extends StatefulWidget {
  static Route route() => MaterialPageRoute(builder: (context) => ListBookingScreen());

  @override
  ListBookingStateScreen createState() => ListBookingStateScreen ();
}

class  ListBookingStateScreen extends State<ListBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(),
          body: Body(),
        ),
      ),
    );
  }
}
