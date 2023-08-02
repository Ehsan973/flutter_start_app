import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: getBody(),
      ),
    );
  }
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
        getNetworkImage(
          url:
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getAssetImage(
              backgroundColor: Colors.green,
            ),
            getAssetImage(
                backgroundColor: Colors.purple, height: 150, width: 150),
            getAssetImage(
              backgroundColor: Colors.brown,
            ),
          ],
        ),
        getAssetImage(),
      ],
    ),
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
