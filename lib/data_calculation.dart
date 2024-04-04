import 'package:flutter/material.dart';
class Result_Page extends StatefulWidget {
  //
  // const Result_Page({super.key});
  String bmi_result;
  Result_Page({required this.bmi_result});
  @override
  State<Result_Page> createState() => _Result_PageState();
}

class _Result_PageState extends State<Result_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            backgroundColor: Color(0xff0A0E21),
          ),
        ),
      ),

    body:SingleChildScrollView(
    child: Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: Column(
    children: [
      Text("Result",
      style: TextStyle(
    fontSize: 30,
    color: Colors.white,
    ),
    ),
      Text(widget.bmi_result,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    Container(
    height: 400,
    width: 400,
    color: Color(0xff719de3),
    child: Column(
    //crossAxisAlignment: ,
    //mainAxisAlignment: ,
    children: [

    ],
    ),
    )

    ],
    ),
    ),
    )



    );
  }
}
