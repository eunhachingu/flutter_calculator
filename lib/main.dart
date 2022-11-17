import 'package:calculator1/screens/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<String> buttons = [
    "C",
    "DEL",
    "%",
    "/",
    "9",
    "8",
    "7",
    "x",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "+",
    "0",
    ".",
    "ANS",
    "=",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.deepPurple[100],
          body: SafeArea(
            child: Column(
              children: [
                Expanded(child: Container()),
                Expanded(
                    flex: 4,
                    child: Container(
                        child: GridView.builder(
                            itemCount: buttons.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4),
                            itemBuilder: (BuildContext context, int index) {
                              if (index == 0) {
                                return MyButton(
                                  buttonText: buttons[index],
                                  color: Colors.green,
                                  textColor: Colors.white,
                                );
                              } else if (index == 1) {
                                return MyButton(
                                  buttonText: buttons[index],
                                  color: Colors.red,
                                  textColor: Colors.white,
                                );
                              } else {
                                return MyButton(
                                  buttonText: buttons[index],
                                  color: isOperator(buttons[index])
                                      ? Colors.deepPurple
                                      : Colors.deepPurple[50],
                                  textColor: isOperator(buttons[index])
                                      ? Colors.white
                                      : Colors.deepPurple,
                                );
                              }
                            }))),
              ],
            ),
          ),
        ));
  }

  bool isOperator(String x) {
    if (x == '%' || x == '/' || x == "x" || x == "+" || x == "-") {
      return true;
    }
    return false;
  }
}
