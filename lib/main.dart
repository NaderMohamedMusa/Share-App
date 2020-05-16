import 'package:flutter/material.dart';
import 'package:share/share.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SHare APP",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Share App"),
        ),
        body: Center(
          child: RaisedButton.icon(
              onPressed: () {
                final String url ="http//path your app on google play or app store ";
                final RenderBox box =context.findRenderObject();
                Share.share(url,sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
              },
              icon: Icon(Icons.share),
              label: Text("Share APP")),
        ),
      ),
    );
  }
}
