import 'package:flutter/material.dart';

Widget getFirstChallangeScreen() {
  return Scaffold(
    backgroundColor: Colors.green[400],
    body: SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: _getColoredContainer(),
          ),
          Expanded(
            child: _getColoredContainer(backgroundColor: Colors.blue),
          ),
        ],
      ),
    ),
  );
}

Widget _getColoredContainer({Color backgroundColor = Colors.red}) {
  return Container(
    color: backgroundColor,
    height: 100,
    width: 100,
  );
}
