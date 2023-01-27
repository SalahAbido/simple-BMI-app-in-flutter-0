import 'dart:math';

import 'package:bmi_calculator_hassan_falaih/screens/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 180.0;
  int weight = 80, age = 22;
  bool ismale=false;
  double GetResult(int widget,double height){ 
    return widget/ pow(height/100, 2);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Body Mass Index"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {  
                      setState(() {
                        ismale=!ismale;
                      });
                    },
                    child: Container(
                      // padding: const EdgeInsets.all(8.0),
                      width: size.width / 2.5,
                      height: size.height / 4.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: ismale?Colors.teal: Colors.blueGrey),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 100.0,
                          ),
                          const Text(
                            "Male",
                            style: TextStyle(color: Colors.black, fontSize: 25.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  MaterialButton(
                      onPressed: () {  
                      setState(() {
                        ismale=!ismale;
                      });
                    },
                    child: Container(
                      // padding: const EdgeInsets.all(8.0),
                      width: size.width / 2.5,
                      height: size.height / 4.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: ismale?Colors.blueGrey: Colors.teal),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 100.0,
                          ),
                          const Text(
                            "Female",
                            style: TextStyle(color: Colors.black, fontSize: 25.0),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: size.width * 0.85,
                height: size.height / 4,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20.0)),
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Height",
                        style: TextStyle(color: Colors.black, fontSize: 25.0),
                      ),
                      Text(
                        "$height",
                        // ignore: prefer_const_constructors
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      Slider(
                        value: height,
                        max: 220.0,
                        min: 100.0,
                        divisions: 240,
                        activeColor: Colors.teal,
                        thumbColor: Colors.white,
                        inactiveColor: Colors.white,
                        onChanged: (double value) {
                          setState(() {
                            height = value;
                          });
                        },
                      )
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    width: size.width / 2.5,
                    height: size.height / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.teal),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Weight",
                          style: TextStyle(color: Colors.black, fontSize: 25.0),
                        ),
                        Text(
                          "$weight",
                          style: const TextStyle(
                              color: Colors.black, fontSize: 25.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              child: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            FloatingActionButton(
                              child: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    width: size.width / 2.5,
                    height: size.height / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.teal),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Age",
                          style: TextStyle(color: Colors.black, fontSize: 25.0),
                        ),
                        Text(
                          "$age",
                          style: const TextStyle(
                              color: Colors.black, fontSize: 25.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              child: const Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            FloatingActionButton(
                              child: const Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              MaterialButton(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: const Text("Calculate",style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white
                  ),),
              ),
                onPressed: (){
                  var result=GetResult(weight,height);
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  ResultScrean(age: age, ismale: ismale, result: result,),));
              })
            ]),
      ),
    );
  }
}


