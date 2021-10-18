import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(   
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
         title: Text("Currency Converter App"),
      ),
      body: ListView(
           children: [
             // adding the texts for issue #3
             Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text('Exchange Rate', style: TextStyle(
                    color: Colors.black38 ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('CFA 566.22', style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold,
                  ),),
                ],
             ),
           ],
      ),
   );
  }
}
