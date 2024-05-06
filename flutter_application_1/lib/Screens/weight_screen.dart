import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/height_screen.dart';
import 'package:flutter_application_1/Screens/result_screen.dart';
import 'package:flutter_application_1/components/name_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../components/button.dart';

double Weight = 40.0;

class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  static String id = "WeightScreen";

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  @override
  Widget build(BuildContext context) {
    
    double heightValue = ModalRoute.of(context)!.settings.arguments as double; 
    double heightInMeters = heightValue / 100;

    double bmi = Weight / (heightInMeters * heightInMeters);

    return BlocConsumer(builder: 
    (context,state){
 return Scaffold(
      body: Column(
        children: [
          const NameAppBar(requierdPurpose: "Weight"),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(15),
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: SleekCircularSlider(
                appearance: CircularSliderAppearance(
                  customColors: CustomSliderColors(
                      trackColor: Colors.limeAccent,
                      progressBarColors: [
                        Colors.lightGreen,
                        Colors.amberAccent
                      ],
                      shadowMaxOpacity: 20.0),
                  infoProperties: InfoProperties(topLabelText: 'Weight'),
                ),
                initialValue: Weight,
                onChange: (dynamic vm) {
                  Weight = vm;
                  setState(() {
                    double bmi = Weight / (heightInMeters * heightInMeters);
                  });
                  print(  "your bmi is $bmi");
                },
              ),
            ),
          ),

          Buttom (
             arrowDirection: Icons.arrow_back,
             function: (){
                Navigator.pushNamed(context, HeightScreen.id);
             },
             keyPurposeName: "Back",
             ),

           const   SizedBox(height: 30,),

             Buttom(
              arrowDirection:Icons.calculate,
               function: (){
                     Navigator.pushNamed(context, ResultScreren.id,arguments: bmi);
               },
                keyPurposeName: "Clculate"
                )
        ],
      ),
    );
  
    },
     listener: (context,state){

     });
  }
}
