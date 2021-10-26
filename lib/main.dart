import 'package:flutter/material.dart';
import 'getData.dart';

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

String dropdownvalue = 'Apple'; String newValue = " ";
  var items =  ['Apple','Banana','Grapes','Orange','watermelon','Pineapple'];


DropdownButton<String> buildDropdownButton() {
    return DropdownButton(
              value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items:items.map((String items) {
                     return DropdownMenuItem(
                         value: items,
                         child: Text(items)
                     );
                }
                ).toList(),
              onChanged: (newValue){
                setState(() {
                   newValue = dropdownvalue;
                });
              }
            );
}
 void getData() async{
   var tmp = await CurrencyList().getData();
  
 }
 
  @override
  Widget build(BuildContext context) {
    getData();
   return Scaffold(
      appBar: AppBar(
         title: Text("Currency Converter App"),
      ),
      body: ListView(
          children: [
             // adding the texts for issue #3
             Center(
               child: Column(
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
             ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildDropdownButton(),
                ElevatedButton.icon(
            icon: Icon(Icons.arrow_forward), 
            label: Text(" "),
              onPressed: () {
   //some function
               },),
                buildDropdownButton()
              ]
            ),
          )
     ] ));
  }
}
  
