import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class CalculatorButton extends StatelessWidget {
  String text;

  CalculatorButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: (Colors.grey[400])!, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 30),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
              border: Border.all(
                color: (Colors.grey[600])!,
                width: 5,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.blueGrey,
                      border: Border.all(color: (Colors.grey[400])!, width: 4)),
                  // color: Colors.blueGrey,
                  margin: const EdgeInsets.all(9),
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  margin: const EdgeInsets.all(9),
                  // color: Colors.grey[50],
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Flexible(
                                        flex: 1, child: CalculatorButton('C')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton('/')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton('X')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton('AC')),
                                  ]),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              // color: Colors.grey[300],
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Flexible(
                                        flex: 1, child: CalculatorButton('7')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton('8')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton('9')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton('-')),
                                  ]),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              // color: Colors.grey[400],
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Flexible(
                                        flex: 1, child: CalculatorButton('4')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton('5')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton('6')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton('+')),
                                  ]),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              // color: Colors.grey[600],
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Flexible(
                                        flex: 1, child: CalculatorButton('1')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton('2')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton('3')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton(',')),
                                  ]),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              // color: Colors.grey[600],
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Flexible(
                                        flex: 2, child: CalculatorButton('0')),
                                    Flexible(
                                        flex: 1, child: CalculatorButton('=')),
                                  ]),
                            ),
                          ),
                        ]),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
