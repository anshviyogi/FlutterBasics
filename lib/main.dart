import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: FlutterScreen(),
    );
  }

}

class FlutterScreen extends StatelessWidget {

  var array = ["ansh","vansh","akash","me"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Text(array[index]);
      },itemCount: array.length,
      itemExtent: 100,
      )
    );
  }

}