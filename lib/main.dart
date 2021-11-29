import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

  var num1 , num2 , output = 0;

  void addition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      output = num1 + num2;
    });
  }

  void subtraction(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      output = num1 - num2;
    });
  }

  void multiplication(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      output = num1 * num2;
    });
  }

  void division(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      output = num1 ~/ num2;
    });
  }

  void clear(){
    t1.text = '0';
    t2.text = '0';
    setState(() {
      output = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Calculator'
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Output - $output'
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 50.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: t1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Enter First No.",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 50.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: t2,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Enter Second No.",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        onPressed: addition,
                      child: Text("+"),
                    ),
                    RaisedButton(
                      onPressed: subtraction,
                      child: Text("-"),
                    ),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        onPressed: multiplication,
                      child: Text("*"),
                    ),
                    RaisedButton(
                      onPressed: division,
                      child: Text("/"),
                    ),
                  ],
                ),
                SizedBox(height: 15.0,),
                RaisedButton(
                  onPressed: clear,
                  child: Text('clear'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


