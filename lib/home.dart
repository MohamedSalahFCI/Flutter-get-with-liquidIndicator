import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class LiquidIndicator extends StatefulWidget {
  @override
  _LiquidIndicatorState createState() => _LiquidIndicatorState();
}

class _LiquidIndicatorState extends State<LiquidIndicator> {
  int x = 0;

  Future<int> inc() {
    setState(() {
      x = x + 1;
    });
  }

/*
  Future<void> prin() {
    print("referesh");
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("my Refresh"),
      ),
      body: new LiquidPullToRefresh(
        onRefresh: inc,
        showChildOpacityTransition: false,
        child: ListView(
          children: <Widget>[
            new Center(
              child: new Text("$x"),
            )
          ],
        ),
      ),
    );
  }
}
