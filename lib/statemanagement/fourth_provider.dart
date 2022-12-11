import 'package:flutter/material.dart';
import 'package:flutter_api/pr/count.dart';
import 'package:provider/provider.dart';

class CountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var count = Provider.of<CounterProvider>(context);
    return Text(
      '${count.c}',
      style: TextStyle(fontSize: 38),
    );
  }
}
