import 'package:flutter/material.dart';

Widget getTestScreen() {
  return Scaffold(
    backgroundColor: Colors.amber,
    body: getBody(),
  );
}

Widget getBody() {
  return SafeArea(
    child: Column(
      verticalDirection: VerticalDirection.up,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment
          .spaceEvenly, // center / end / start / spaceAround / spaceBetween / spaceEvenly
      crossAxisAlignment:
          CrossAxisAlignment.end, // center / end / start / stretch
      children: [
        getFlexRow(),
        getNetworkImage(
          url:
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: getAssetImage(
                backgroundColor: Colors.green,
              ),
            ),
            getAssetImage(
              backgroundColor: Colors.purple,
              height: 150,
              width: 150,
            ),
            getAssetImage(
              backgroundColor: Colors.brown,
            ),
          ],
        ),
        Row(
          children: [
            getAssetImage(),
            TextButton(
              onPressed: () {
                print("The Text Button has been clicked!");
              },
              child: Text("Click Me!"),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget getColoredContainer(
    {Color backgroundColor = Colors.pink,
    double height = 50,
    double width = 50}) {
  return Container(
    color: backgroundColor,
    width: width,
    height: height,
  );
}

Widget getNetworkImage({String? url, double height = 200, double width = 270}) {
  return Container(
    color: Colors.blue,
    width: width,
    height: height,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    child: Center(
      child: Image(
        image: NetworkImage(url!),
      ),
    ),
  );
}

Widget getAssetImage(
    {Color backgroundColor = Colors.redAccent,
    String url = './images/owl.jpg',
    double height = 100,
    double width = 100}) {
  return Container(
    color: backgroundColor,
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(5),
    width: width,
    height: height,
    child: Center(
      child: Image(
        image: AssetImage(url),
      ),
    ),
  );
}

Widget getFlexRow() {
  return Row(
    children: [
      Expanded(
        flex: 5,
        child: getColoredContainer(
          backgroundColor: Colors.deepPurple,
        ),
      ),
      getColoredContainer(
        backgroundColor: Colors.deepOrange,
      ),
      Expanded(
        flex: 2,
        child: getColoredContainer(
          backgroundColor: Colors.deepPurple,
        ),
      ),
    ],
  );
}
