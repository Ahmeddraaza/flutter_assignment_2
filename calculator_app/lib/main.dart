import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: Calculator(),
    );
  }
}





class Calculator extends StatefulWidget {
 

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<Calculator> createState() => _CalculatorState();
}

class  _CalculatorState extends State<Calculator> {
  
  Widget calcButton(String buttonText, Color buttonColor, Color textColor) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
          shape: const CircleBorder(),
  
        padding: EdgeInsets.all(35)
        
        ),
        onPressed: () {
          // Add your onPressed logic here
        },
        child: Text(
          buttonText,
          style: TextStyle(color: textColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
       

      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Padding(padding: EdgeInsets.all(10)),
                  Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  calcButton('AC', Colors.grey, Colors.black),
                  calcButton('AC', Colors.grey, Colors.black),
                  calcButton('AC', Colors.grey, Colors.black),
                  calcButton('AC', Colors.grey, Colors.black),
               
                ],
              ),
        
          ],
        ),
      ),
    );
  }
}
