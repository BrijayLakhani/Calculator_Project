import 'package:flutter/material.dart';

import 'calculator.dart';
import 'demo2calculator.dart';
import 'democalculator.dart';
import 'newdemocalculator.dart';

void main() {
  runApp(MaterialApp(
    home: newdemocl(),
    theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black)))),
    debugShowCheckedModeBanner: false,
  ));
}

class AddTwonumber extends StatefulWidget {
  const AddTwonumber({Key? key}) : super(key: key);

  @override
  State<AddTwonumber> createState() => _AddTwonumberState();
}

class _AddTwonumberState extends State<AddTwonumber> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();

  int? sum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(4),
            child: TextField(
              controller: t1,
              decoration: InputDecoration(
                  label: Text("Enter First Value"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            child: TextField(
              controller: t2,
              decoration: InputDecoration(
                  label: Text("Enter Secound Value"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  sum = int.parse(t1.text) + int.parse(t2.text);
                  print(sum);
                  t3.text = "$sum";
                },
                child: Text("+",style: TextStyle(fontSize: 25),),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: ElevatedButton(
                    onPressed: () {
                      sum = int.parse(t1.text) - int.parse(t2.text);
                      print(sum);
                      t3.text = "$sum";
                    },
                    child: Text("-",style: TextStyle(fontSize: 30)),),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: ElevatedButton(
                    onPressed: () {
                      sum = int.parse(t1.text) ~/ int.parse(t2.text);
                      print(sum);
                      t3.text = "$sum";
                    },
                    child: Text("/",style: TextStyle(fontSize: 25))),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                child: ElevatedButton(
                    onPressed: () {
                      sum = int.parse(t1.text) * int.parse(t2.text);
                      print(sum);
                      t3.text = "$sum";
                    },
                    child: Text("*",style: TextStyle(fontSize: 25))),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: t3,
              decoration: InputDecoration(
                  label: Text("Answer"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ],
      ),
    );
  }
}
