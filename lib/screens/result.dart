import 'package:flutter/material.dart';

class ResultScrean  extends StatelessWidget {
  const ResultScrean ({super.key, required this.ismale, required this.age, required this.result});
  final bool ismale;
  final int age;  
  final double result;  
  String resultStatus(double result){
    if (result>=25){
      return "overweight";
    }
    else if(result<18.5){
      return "underweight";
    }
    else {
      return "Normal";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Result"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 80.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
         [
            Text("Gender: ${ismale?'Male':'Feamle'}",
            style: const TextStyle(color: Colors.teal,
            fontSize: 45.0,)            
            ,),
            Text("Result: ${result.round()}",
            style: const TextStyle(color: Colors.teal,
            fontSize: 45.0,)            
            ,),
            const Text("Healthiness:",
            style: TextStyle(color: Colors.teal,
            fontSize: 45.0,)            
            ,),
            Text(resultStatus( result),
            style: const TextStyle(color: Colors.teal,
            fontSize: 45.0,)            
            ,),
            Text("Age: $age",
            style: const TextStyle(color: Colors.teal,
            fontSize: 45.0,)            
            ,),
        ]),
      ),
    );
  }
}