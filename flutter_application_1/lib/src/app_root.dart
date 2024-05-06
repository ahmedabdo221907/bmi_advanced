import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/bmi_screen.dart';
import 'package:flutter_application_1/Screens/height_screen.dart';
import 'package:flutter_application_1/Screens/result_screen.dart';
import 'package:flutter_application_1/Screens/weight_screen.dart';
import 'package:flutter_application_1/blocks/calculator/cubit/bmi_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AppRoot extends StatelessWidget {
  const AppRoot({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider(create: (context) =>BmiCubit() ,)
      ],
      child: MaterialApp( 
       debugShowCheckedModeBanner: false,
        routes:  {
        BmiScreen.id :(context) => const BmiScreen(),
        HeightScreen.id :(context)=> const  HeightScreen(), 
        WeightScreen.id :(context)=> const WeightScreen(),
        ResultScreren.id:(context)=>const ResultScreren(),
        },
        initialRoute: BmiScreen.id,
      ),
    );
  }
  }