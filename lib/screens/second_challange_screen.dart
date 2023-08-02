import 'package:flutter/material.dart';

Widget getSecondChallangeScreen() {
  return Scaffold(
    backgroundColor: Colors.greenAccent,
    body: SafeArea(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: _getColoredContainer(),
                ),
                Expanded(
                  child: _getColoredContainer(
                    backgroundColor: Colors.orange,
                  ),
                ),
                Expanded(
                  child: _getColoredContainer(
                    backgroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: _getColoredContainer(
                    backgroundColor: Colors.blue,
                  ),
                ),
                Expanded(
                  child: _getColoredContainer(
                    backgroundColor: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: _getColoredContainer(
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            ),
          )
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
