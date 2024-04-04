import 'package:bmi/data_calculation.dart';
import 'package:flutter/material.dart';

class Data_collection extends StatefulWidget {
  const Data_collection({super.key});

  @override
  State<Data_collection> createState() => _Data_collectionState();
}

class _Data_collectionState extends State<Data_collection> {

  double height=0.0;
  int weight=70;
  int age=20;

  double bmi=0.0;
  bmi_calculation(){
    setState(() {
      bmi=(weight/(height*height));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0A0E21),
        title: Center(
          child: Text("BMI Calculator",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),

      body:SingleChildScrollView(
        child: Container(
          color: Color(0xff0A0E21),
          child: Column(
            children: [
        
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      color: Color(0xff1D1E33),
                      height: 170,
                      width: 170,
                      child: Column(
                        children: [
                          Icon(Icons.male,
                          color: Colors.white,
                            size:120,
                          ),
                          Text("Mail",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      color: Color(0xff1D1E33),
                      height: 170,
                      width: 170,
                      child: Column(
                        children: [
                          Icon(Icons.female,
                            color: Colors.white,
                            size:120,
                          ),
                          Text("Femail",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 370,
                color: Color(0xff1D1E33),
                child: Column(
                  children: [
        
                    Text("Height",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    ),
        
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Height"
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (input){
                        height=double.parse(input);
                      },
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 200,
                      width: 170,
                      color: Color(0xff1D1E33),
                      child: Column(
                        children: [
                          Text("weight",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                          ),

                          Text(weight.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icon(Icons.exposure_minus_1,
                                size:50,
                                color: Colors.white,),
                              )
                            ],
                          )



                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 200,
                      width: 170,
                      color: Color(0xff1D1E33),
                      child: Column(
                        children: [
                          Text("weight",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),

                          Text(weight.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icon(Icons.exposure_minus_1,
                                  size:50,
                                  color: Colors.white,),
                              )
                            ],
                          )



                        ],
                      ),
                    ),
                  )
                ],
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: (){

                  bmi_calculation();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Result_Page(bmi_result: bmi.toString(),)));
                },
                child: Text("Calculate"),
              )
        
            ],
          ),
        ),
      )



    );
  }
}
