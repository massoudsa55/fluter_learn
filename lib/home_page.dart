import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  var number1 = 0, number2 = 0, result = 0;
  final TextEditingController num1 = TextEditingController(text: "0");
  final TextEditingController num2 = TextEditingController(text: "0");
  void doAdd() {
    setState(() {
      result = number1 + number1;
    });
  }

  void doSub() {
    setState(() {
      result = number1 + number1;
    });
  }

  void doMult() {
    setState(() {
      result = number1 + number1;
    });
  }

  void doDiv() {
    setState(() {
      result = number1 + number1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Result : $result',
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.green,
                )),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Enter first number"),
              controller: num1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(hintText: "Enter second number"),
              controller: num2,
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                    color: Colors.greenAccent,
                    onPressed: doAdd,
                    child: const Text(
                      '+',
                      style: TextStyle(fontSize: 30.0),
                    )),
                MaterialButton(
                    color: Colors.greenAccent,
                    onPressed: doSub,
                    child: const Text('-', style: TextStyle(fontSize: 30.0))),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                    color: Colors.greenAccent,
                    onPressed: doMult,
                    child: const Text('*', style: TextStyle(fontSize: 30.0))),
                MaterialButton(
                    color: Colors.greenAccent,
                    onPressed: doDiv,
                    child: const Text('/', style: TextStyle(fontSize: 30.0))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
