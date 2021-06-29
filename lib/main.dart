import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stf-full, stf-less
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  ///
  /// variable
  ///
  TextEditingController inputOne = TextEditingController();
  TextEditingController inputTwo = TextEditingController();
  String output = '0.0';

  @override
  Widget build(BuildContext context) {
    final width =
        MediaQuery.of(context).size.width; //this is where u make sure it fits

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          //
          //Child1: Display
          //
          Container(
            height: 300,
            width: width,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                //first wrap with container, then wrap with widget for alignment
                inputOne.text,
                textAlign: TextAlign.end, //no longer need since already align
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                ),
              ),
            ),
          ),

          //
          // Child 2: Button
          //
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                //
                //Child2: C, D, %, /
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //
                    //C
                    //
                    CircleButton(
                      title: 'C',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped Clear');

                        setState(() {
                          inputOne.text = '';
                        });
                      },
                    ),
                    //
                    //D
                    //
                    CircleButton(
                      title: 'D',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped D');

                        setState(() {
                          inputOne.text = inputOne.text
                              .substring(0, inputOne.text.length - 1);
                        });
                      },
                    ),
                    //
                    //%
                    //
                    CircleButton(
                      title: '%',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped %');

                        setState(() {
                          var x = double.parse(inputOne.text);

                          var z = x / 100;

                          setState(() {
                            inputOne.text = z.toString();
                          });
                        });
                      },
                    ),
                    //
                    // '/'
                    //
                    CircleButton(
                      title: '/',
                      color: Colors.orange,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped /');

                        setState(() {
                          inputOne.text = inputOne.text + '/';
                        });
                      },
                    ),
                  ],
                ),

                //
                //Child3: 7, 8, 9, *
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //
                    //7
                    //
                    CircleButton(
                      title: '7',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped 7');

                        setState(() {
                          inputOne.text = inputOne.text + '7';
                        });
                      },
                    ),
                    //
                    //8
                    //
                    CircleButton(
                      title: '8',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped 8');

                        setState(() {
                          inputOne.text = inputOne.text + '8';
                        });
                      },
                    ),
                    //
                    //9
                    //
                    CircleButton(
                      title: '9',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped 9');

                        setState(() {
                          inputOne.text = inputOne.text + '9';
                        });
                      },
                    ),
                    //
                    // *
                    //
                    CircleButton(
                      title: '*',
                      color: Colors.orange,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped *');

                        setState(() {
                          inputOne.text = inputOne.text + '*';
                        });
                      },
                    ),
                  ],
                ),

                //
                //Child4: 4, 5, 6, -
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //
                    //4
                    //
                    CircleButton(
                      title: '4',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped 4');

                        setState(() {
                          inputOne.text = inputOne.text + '4';
                        });
                      },
                    ),
                    //
                    //5
                    //
                    CircleButton(
                      title: '5',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped 5');

                        setState(() {
                          inputOne.text = inputOne.text + '5';
                        });
                      },
                    ),
                    //
                    //6
                    //
                    CircleButton(
                      title: '6',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped 6');

                        setState(() {
                          inputOne.text = inputOne.text + '6';
                        });
                      },
                    ),
                    //
                    // -
                    //
                    CircleButton(
                      title: '-',
                      color: Colors.orange,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped -');

                        setState(() {
                          inputOne.text = inputOne.text + '-';
                        });
                      },
                    ),
                  ],
                ),

                //
                //Child5: 1, 2, 3, +
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //
                    //1
                    //
                    CircleButton(
                      title: '1',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped 1');

                        setState(() {
                          inputOne.text = inputOne.text + '1';
                        });
                      },
                    ),
                    //
                    //2
                    //
                    CircleButton(
                      title: '2',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped 2');

                        setState(() {
                          inputOne.text = inputOne.text + '2';
                        });
                      },
                    ),
                    //
                    //3
                    //
                    CircleButton(
                      title: '3',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped 3');

                        setState(() {
                          inputOne.text = inputOne.text + '3';
                        });
                      },
                    ),
                    //
                    // +
                    //
                    CircleButton(
                      title: '+',
                      color: Colors.orange,
                      textColor: Colors.white,
                      onTap: () {
                        print('Tapped +');

                        setState(() {
                          inputOne.text = inputOne.text + '+';
                        });
                      },
                    ),
                  ],
                ),

                //
                //Child6: 0, '.', =
                //
                Row(
                  children: [
                    //
                    //0
                    //
                    Expanded(
                      child: RectButton(
                        title: '0',
                        color: Colors.grey,
                        textColor: Colors.black,
                        onTap: () {
                          print('0');

                          setState(() {
                            inputOne.text = inputOne.text + '0';
                          });
                        },
                      ),
                    ),
                    //
                    //'.'
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: CircleButton(
                        title: '.',
                        color: Colors.grey,
                        textColor: Colors.black,
                        onTap: () {
                          print('Tapped .');

                          setState(() {
                            inputOne.text = inputOne.text + '.';
                          });
                        },
                      ),
                    ),
                    //
                    // =
                    //
                    CircleButton(
                      title: '=',
                      color: Colors.grey,
                      textColor: Colors.black,
                      onTap: () {
                        print('Tapped =');

                        if (inputOne.text.contains('+')) {
                          var data = inputOne.text.split('+');

                          var x = double.parse(data[0]);

                          var y = double.parse(data[1]);

                          var z = x + y;

                          setState(() {
                            inputOne.text = z.toString();
                          });
                        } else if (inputOne.text.contains('-')) {
                          var data = inputOne.text.split('-');

                          var x = double.parse(data[0]);

                          var y = double.parse(data[1]);

                          var z = x - y;

                          setState(() {
                            inputOne.text = z.toString();
                          });
                        } else if (inputOne.text.contains('*')) {
                          var data = inputOne.text.split('*');

                          var x = double.parse(data[0]);

                          var y = double.parse(data[1]);

                          var z = x * y;

                          setState(() {
                            inputOne.text = z.toString();
                          });
                        } else if (inputOne.text.contains('/')) {
                          var data = inputOne.text.split('/');

                          var x = double.parse(data[0]);

                          var y = double.parse(data[1]);

                          var z = x / y;

                          setState(() {
                            inputOne.text = z.toString();
                          });
                        }
                      },
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final GestureTapCallback onTap;

  CircleButton({this.title, this.color, this.textColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 10;

    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: height,
        child: ElevatedButton(
          onPressed: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              title,
              style: TextStyle(
                  color: textColor, fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: color,
            shape: CircleBorder(),
          ),
        ),
      ),
    );
  }
}

class RectButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final GestureTapCallback onTap;

  RectButton({this.title, this.color, this.textColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 10;

    return Container(
      height: height,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(title,
              style: TextStyle(
                  color: textColor, fontSize: 17, fontWeight: FontWeight.bold)),
          style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ),
      ),
    );
  }
}
