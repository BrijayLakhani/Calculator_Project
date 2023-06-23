import 'package:flutter/material.dart';

class democl extends StatefulWidget {
  const democl({Key? key}) : super(key: key);

  @override
  State<democl> createState() => _democlState();
}

//InkWell
class _democlState extends State<democl> {
  // String output = "0";
  // String _output = "0";
  // double num1= 0;
  // double num2 = 0;
  // String operand = "";
  // buttonPressed(String buttonText) {
  //   if(buttonText == "C"){
  //     _output = "0";
  //     num1 = 0;
  //     num2 = 0;
  //     operand = "";
  //
  //   }else if(buttonText == "+" ||buttonText == "-" ||buttonText == "/" ||buttonText == "X"){
  //     num1 = double.parse(output);
  //     operand = buttonText;
  //     _output = "0";
  //
  //   } else if(buttonText == "="){
  //     num2 = double.parse(output);
  //     if(operand == "+"){
  //       _output == (num1 + num2).toString();
  //     }if(operand == "-"){
  //       _output == (num1 - num2).toString();
  //     }if(operand == "x"){
  //       _output == (num1 * num2).toString();
  //     }if(operand == "/"){
  //       _output == (num1 / num2).toString();
  //     }
  //     num1 = 0;
  //     num2 = 0;
  //     operand = "";
  //   } else{
  //     _output = _output + buttonText;
  //   }
  //   print(_output);
  //   setState(() {
  //     output = double.parse(_output).toStringAsFixed(0);
  //   });
  // }
  String display = "";
  bool isDot = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      output,
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      input,
                      style: TextStyle(fontSize: 40),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            setState(() {
                              input = "";
                              display = "";
                              output = "";
                              firstData = 0;
                              secondData = 0;
                              cnt = 0;
                              isDot = true;
                            });
                          },
                          child: Text(
                            "C",
                            style:
                            TextStyle(fontSize: 50.0, color: Colors.redAccent),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            setState(() {
                              output = output.substring(0,output.length-1);
                            });
                          },
                          child: Text(
                            "<",
                            style: TextStyle(
                                fontSize: 50.0, color: Colors.greenAccent),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            mySecondDisplay('%');
                            myOperator('%');
                          },
                          child: Text(
                            "%",
                            style: TextStyle(
                                fontSize: 50.0, color: Colors.greenAccent),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            mySecondDisplay('+');
                            myOperator('+');
                          },
                          child: Text(
                            "+",
                            style: TextStyle(
                                fontSize: 50.0, color: Colors.greenAccent),
                          )),
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            myDisplay("9");
                            mySecondDisplay("9");
                          },
                          child: Text(
                            "9",
                            style: TextStyle(fontSize: 50.0),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            myDisplay("8");
                            mySecondDisplay("8");
                          },
                          child: Text(
                            "8",
                            style: TextStyle(fontSize: 50.0),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            myDisplay("7");
                            mySecondDisplay("7");
                          },
                          child: Text(
                            "7",
                            style: TextStyle(fontSize: 50.0),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            myOperator("-");
                            mySecondDisplay("-");
                          },
                          child: Text(
                            "-",
                            style: TextStyle(
                                fontSize: 50.0, color: Colors.greenAccent),
                          )),
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            myDisplay("6");
                            mySecondDisplay("6");
                          },
                          child: Text(
                            "6",
                            style: TextStyle(fontSize: 50.0),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            myDisplay("5");
                            mySecondDisplay("5");
                          },
                          child: Text(
                            "5",
                            style: TextStyle(fontSize: 50.0),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            myDisplay("4");
                            mySecondDisplay("4");
                          },
                          child: Text(
                            "4",
                            style: TextStyle(fontSize: 50.0),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            myOperator("x");
                            mySecondDisplay('x');
                          },
                          child: Text(
                            "x",
                            style: TextStyle(
                                fontSize: 50.0, color: Colors.greenAccent),
                          )),
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            mySecondDisplay('3');
                            myDisplay("3");
                          },
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: 50.0),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            mySecondDisplay('2');
                            myDisplay("2");
                          },
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: 50.0),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            myDisplay("1");
                            mySecondDisplay('1');
                          },
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 50.0),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            myOperator("/");
                            mySecondDisplay('/');
                          },
                          child: Text(
                            "/",
                            style: TextStyle(
                                fontSize: 50.0, color: Colors.greenAccent),
                          )),
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            myDisplay("+/-");
                            mySecondDisplay("+/-");
                          },
                          child: Text(
                            "+/-",
                            style: TextStyle(fontSize: 37.4),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {

                            if(!output.startsWith("0")){
                              myDisplay("0");
                              mySecondDisplay('0');
                            }else if(output.contains(".")){
                              myDisplay("0");
                              mySecondDisplay('0');
                            }
                          },
                          child: Text(
                            "0",
                            style: TextStyle(fontSize: 50.0),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            setState(() {
                              secondData = double.parse(display);
                              display = "";
                              if (cnt == 84723) {
                                display = "${firstData + secondData}";
                                input=display;
                              } else if (cnt == 3853) {
                                display= "${firstData - secondData}";
                                input=display;
                              } else if (cnt == 123) {
                                display = "${firstData * secondData}";
                                input=display;
                              } else if (cnt == 234) {
                                display = "${firstData / secondData}";
                                input=display;
                              } else if (cnt == 23){
                                display = "${(firstData * secondData)/100}";
                                input=display;
                              }
                              if(input.endsWith("0")){
                                input = input.substring(0, input.length - 2);
                              }
                            });
                          },
                          child: Text(
                            "=",
                            style: TextStyle(fontSize: 50.0, color: Colors.red),
                          )),
                    )),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            if(isDot)
                            {
                              mySecondDisplay('.');
                              myDisplay('.');
                              setState(() {
                                isDot = false;
                              });
                            }
                          },
                          child: Text(
                            ".",
                            style: TextStyle(
                                fontSize: 50.0, color: Colors.greenAccent),
                          )),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void myDisplay(String clickedNum) {
    setState(() {
      display = display + clickedNum;

    });
  }
  void mySecondDisplay(String clickedNum) {
    output = output+clickedNum;
  }

  double firstData = 0;
  double secondData = 0;
  double cnt = 0;
  String input = "";
  String output = "";

  void myOperator(String s) {
    setState(() {
      double temp = firstData;
      // print("jjjjjjjjjjj$display");
      firstData = double.parse(display);
      display = "";
      // print("lllllllll$firstData");

      if (cnt == 84723) {
        firstData = temp + firstData;
      }
      if (cnt == 3853) {
        firstData = temp - firstData;
      }
      if (cnt == 123) {
        firstData = temp * firstData;
      }
      if (cnt == 234) {
        firstData = temp / firstData;
      }
      if(cnt == 23){
        firstData = temp % firstData;
      }
      if (s == "+") {
        cnt = 84723;
      } else if (s == "-") {
        cnt = 3853;
      } else if (s == "x") {
        cnt = 123;
      } else if (s == "/") {
        cnt = 234;
      } else if (s == "%") {
        cnt = 23;
      }
      setState(() {
        isDot = true;
      });
    });
  }
}
