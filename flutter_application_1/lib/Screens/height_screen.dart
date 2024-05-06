import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/bmi_screen.dart';
import 'package:flutter_application_1/Screens/weight_screen.dart';
import 'package:flutter_application_1/blocks/calculator/cubit/bmi_cubit.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/name_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';



class HeightScreen extends StatefulWidget {
  const HeightScreen({super.key});
  static String id = "HeightScreen";

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

@override
class _HeightScreenState extends State<HeightScreen> {
  @override
  Widget build(BuildContext context) {
    String picture = ModalRoute.of(context)!.settings.arguments.toString();
    return  BlocConsumer(

      builder: (context,state){
        BmiCubit cubit =BmiCubit.get(context);
return Scaffold(
      body: Column(
        children: [
             const   NameAppBar(requierdPurpose: "Height"),
           Row(
               children: [
                 Padding(
                   padding: const  EdgeInsets.only(left: 50.0),

                   child: Container(
                     height: 500,
                     width:170,
                     decoration:   BoxDecoration(
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image:  NetworkImage(
                         picture
                     ),

                  ),
                 ),
             ),
            ),
              

                 SizedBox(
                   height: 500,
                   width:150,
                   
                     child: SfSlider.vertical(
                       min:0.0,
                       max: 200.0,
                       value: 40,
                       interval:10,
                       showTicks: true,
                       showLabels: true,
                       enableTooltip: true,
                       minorTicksPerInterval: 5,
                       
                        activeColor: Colors.cyanAccent,
                      
                       onChanged: ( value) {
                        cubit.updateHeightVAlue(value);
                       },
                     ),
                 ),
               ],
             ),
             const SizedBox(height: 70,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row( 
                children: [
                           Buttom(
                            arrowDirection: Icons.arrow_back,
                             function: (){
                                 Navigator.pushNamed(context,BmiScreen.id);
                             },
                              keyPurposeName: "Back "
                              ),
                
                              SizedBox(width: 20,),
                
                              Buttom(
                                arrowDirection: Icons.arrow_forward,
                                 function: (){
                        Navigator.pushNamed(context, WeightScreen.id,arguments:{cubit.newvalue}) ;
                                 },
                                  keyPurposeName:"Next"
                                  )
                ],
                             ),
              )
        ],
      )
      ,
    );
  
      },
       listener: (context,state){

       });
  }
}
