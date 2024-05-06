import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({super.key,required this.nameOfGender,required this.picture,required this.function});
    final String nameOfGender;
    final String picture;
     final VoidCallback function ;

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
          onTap:function ,
      child: Container(
        
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 190, 185, 185)),
              child:  Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:25.0,bottom: 10),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("$picture"),
                      maxRadius: 60,
                    ),
                  ),
      
      
      
                  Text("$nameOfGender",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 21, 176, 214),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  
                  ),
                  )
                ],
              ),
            ),
    );
  }
}