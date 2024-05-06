
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/height_screen.dart';
import 'package:flutter_application_1/components/gender_card.dart';
import 'package:flutter_application_1/components/name_app_bar.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({super.key});
static String id ="BmiScreen";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
         const   NameAppBar(
          requierdPurpose: "Gender",
         ),

          GenderCard(
            function: () {
              Navigator.pushNamed(context,
               HeightScreen.id,
               arguments:"https://img.freepik.com/premium-vector/vector-illustration-businessman-standing-flat-cartoon-style_645574-50.jpg");
            },
            nameOfGender: "Male",
            picture: 'https://img.freepik.com/premium-photo/men-avatar_930095-936.jpg',
          ),


               const SizedBox(height: 50,),


            GenderCard (
              function: () {
               Navigator.pushNamed(context,
               HeightScreen.id,
               arguments:"https://img.freepik.com/premium-vector/happy-woman-casual-clothes-with-up-raised-arms-hands-pointing-cartoon-character-flat-vector_257455-1947.jpg"
               );  
              },
              nameOfGender: "Female",
              picture: "https://img.freepik.com/free-photo/3d-illustration-cute-little-girl-blue-jacket_1142-42996.jpg",
            )
        ],
      ),
    );
  }
}
