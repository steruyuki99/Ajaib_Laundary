import 'package:ajaib_laundary/Screen/Laundry/List/list.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({state}) : _state = state;

  final ListScreenState _state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Title',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text('subtitle'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Title',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text('subtitle'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
