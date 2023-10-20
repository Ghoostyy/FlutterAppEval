import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key, required title});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _number = "0";
  bool _bool = false;

  void _boolChange() {
    setState(() {
      _bool == true ? _bool = false : _bool = true;
    });
  }

  _updatenumber(String nb) {
    setState(() {
      _number = nb;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Je suis deçu de ce travail xD"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: _bool,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          TextButton(
                            onPressed: () => _updatenumber('1'),
                            child:
                                const Text('1', style: TextStyle(fontSize: 30)),
                          ),
                          TextButton(
                            onPressed: () => _updatenumber('4'),
                            child:
                                const Text('4', style: TextStyle(fontSize: 30)),
                          ),
                          TextButton(
                            onPressed: () => _updatenumber('7'),
                            child:
                                const Text('7', style: TextStyle(fontSize: 30)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () => _updatenumber('2'),
                            child:
                                const Text('2', style: TextStyle(fontSize: 30)),
                          ),
                          TextButton(
                            onPressed: () => _updatenumber('5'),
                            child:
                                const Text('5', style: TextStyle(fontSize: 30)),
                          ),
                          TextButton(
                            onPressed: () => _updatenumber('8'),
                            child:
                                const Text('8', style: TextStyle(fontSize: 30)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () => _updatenumber('3'),
                            child:
                                const Text('3', style: TextStyle(fontSize: 30)),
                          ),
                          TextButton(
                            onPressed: () => _updatenumber('6'),
                            child:
                                const Text('6', style: TextStyle(fontSize: 30)),
                          ),
                          TextButton(
                            onPressed: () => _updatenumber('9'),
                            child:
                                const Text('9', style: TextStyle(fontSize: 30)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () => _updatenumber('0'),
                    child: const Text('0', style: TextStyle(fontSize: 30)),
                  ),
                  Text(
                    _number,
                    style: const TextStyle(
                        fontSize: 50, color: Color.fromRGBO(75, 0, 255, 1)),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: !_bool,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif")
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _boolChange,
        tooltip: 'Increment',
        child: const Icon(Icons.circle),
      ),
    );
  }
}
