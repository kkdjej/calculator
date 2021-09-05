import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Calculator",
      theme: ThemeData(
          primarySwatch: Colors.blue, backgroundColor: Colors.black26),
      home: CalculatorHomePage(title: "Flutter Calculator11"),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  CalculatorHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  String _str = "0";

  void add(String a) {}
  void deleteAll() {}
  void deleteOne() {}
  void getResult() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
            Widget>[
          Expanded(
              flex: 2,
              child: Card(
                color: Colors.lightGreen[50],
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    _str,
                    textScaleFactor: 2.0,
                  ),
                ),
              )),
          Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      flex: 3,
                      child: TextButton(
                          onPressed: () {
                            deleteAll();
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black54)),
                          child: Image.asset("icons/divide.png",
                              width: 30.0, height: 30.0))),
                  Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          deleteOne();
                        },
                        child:
                            Text("<-", style: TextStyle(color: Colors.white)),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black87)),
                      )),
                ],
              )),
          Expanded(
              flex: 4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          ExpandedRow(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ExpandedButton(
                                    child: Text("7",
                                        style:
                                            TextStyle(color: Colors.blue[50])),
                                    onPressed: () {
                                      add("7");
                                    },
                                    color: Colors.blueAccent),
                                ExpandedButton(
                                    child: Text("8",
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      add("8");
                                    },
                                    color: Colors.blueAccent),
                                ExpandedButton(
                                    child: Text("9",
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      add("9");
                                    },
                                    color: Colors.blueAccent)
                              ]),
                          ExpandedRow(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ExpandedButton(
                                    child: Text("4",
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      add("4");
                                    },
                                    color: Colors.blueAccent),
                                ExpandedButton(
                                    child: Text("5",
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      add("5");
                                    },
                                    color: Colors.blueAccent),
                                ExpandedButton(
                                    child: Text("6",
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      add("6");
                                    },
                                    color: Colors.blueAccent)
                              ]),
                          ExpandedRow(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ExpandedButton(
                                    child: Text("1",
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      add("1");
                                    },
                                    color: Colors.blueAccent),
                                ExpandedButton(
                                    child: Text("2",
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      add("2");
                                    },
                                    color: Colors.blueAccent),
                                ExpandedButton(
                                    child: Text("3",
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      add("3");
                                    },
                                    color: Colors.blueAccent)
                              ]),
                          ExpandedRow(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ExpandedButton(
                                    child: Text("0",
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      add("0");
                                    },
                                    color: Colors.blueAccent),
                                ExpandedButton(
                                    child: Text(".",
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      add(".");
                                    },
                                    color: Colors.blueAccent),
                                ExpandedButton(
                                    child: Text("=",
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      add("9");
                                    },
                                    color: Colors.blue),
                              ])
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            ExpandedButton(
                                onPressed: () {
                                  add("÷");
                                },
                                child: Image.asset(
                                  "icons/divide.png",
                                  width: 10.0,
                                  height: 10.0,
                                ),
                                color: Colors.blue),
                            ExpandedButton(
                                onPressed: () {
                                  add("x");
                                },
                                child: Text("x",
                                    style: TextStyle(color: Colors.white)),
                                color: Colors.blue),
                            ExpandedButton(
                                onPressed: () {
                                  add("-");
                                },
                                child: Text("-",
                                    style: TextStyle(color: Colors.white)),
                                color: Colors.blue),
                            ExpandedButton(
                                onPressed: () {
                                  add("+");
                                },
                                child: Text("+",
                                    style: TextStyle(color: Colors.white)),
                                color: Colors.blue)
                          ]))
                ],
              ))
        ]));
  }
}

class ExpandedButton extends StatelessWidget {
  ExpandedButton(
      {required this.onPressed, required this.child, required this.color});

  final Widget child;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: TextButton(
          onPressed: onPressed,
          child: child,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(this.color)),
        ));
  }
}

class ExpandedRow extends StatelessWidget {
  ExpandedRow({required this.children, required this.crossAxisAlignment});

  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          children: children,
          crossAxisAlignment: crossAxisAlignment,
        ));
  }
}
