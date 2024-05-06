import 'package:flutter/material.dart';

class ResultScreren extends StatelessWidget {
  const ResultScreren({super.key});
  static String id = "RtsultScreen";
  @override
  Widget build(BuildContext context) {
    double bmiResult = ModalRoute.of(context)!.settings.arguments as double;
          
      String getBMICategory(double bmi) {
  if (bmi >= 19 && bmi <= 24.9) {
    return 'Healthy weight';
  } else if (bmi >= 25 && bmi <= 29.9) {
    return 'Overweight ';
  } else if (bmi >= 30) {
    return 'Obese Go To a Doctor ';
  } else {
    return 'Underweight'; 
  }
}

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration:const  BoxDecoration(
              color: Color.fromARGB(255, 239, 243, 54),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(35.0),
                bottomRight: Radius.circular(35.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "your bmi Result  is  ${bmiResult.toStringAsFixed(2)} ",
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                   
                   SizedBox(height: 25,),
                   

                Text("${getBMICategory(bmiResult)}" ,
                style: const TextStyle(fontSize: 30
                
                ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
