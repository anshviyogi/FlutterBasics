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
      body: ListView.separated(itemBuilder: (context, index) {
        return Text(array[index]);
      },itemCount: array.length,
      //  Separated builder class for the seperation of lists
      separatorBuilder: (context,index){
        return Divider(height: 100,thickness: 4.2,);
      },
      )
    );
  }

}