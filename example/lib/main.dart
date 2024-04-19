import 'package:arched_rectangle/arched_rectangle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 使用方法示例
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('123Custom Arc Clipper Example'),
        ),
        body: Center(
          child: Column(
            children: [
              ClipPath(
                clipper: CustomArcBottomClipper(
                 50.0,
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text(
                    'Custom Arc Clipper',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              ClipPath(
                clipper: CustomArcLeftClipper(
                  50.0,
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text(
                    'Custom Arc Clipper',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              ClipPath(
                clipper: CustomArcRightClipper(
                  50.0,
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text(
                    'Custom Arc Clipper',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              ClipPath(
                clipper: CustomArcTopClipper(
                  50.0,
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text(
                    'Custom Arc Clipper',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
