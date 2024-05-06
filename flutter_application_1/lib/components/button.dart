import 'package:flutter/material.dart';
class Buttom extends StatelessWidget {
  const Buttom({super.key,re,required this.arrowDirection,required this.function,required this.keyPurposeName});
  final VoidCallback function;
  final IconData arrowDirection ;
  final String keyPurposeName ;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: 
        function,
      
      child: Container(
        alignment: AlignmentDirectional.center,
        width: 180,
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent,
                width: 2),
            borderRadius: BorderRadius.circular(15)
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
               arrowDirection , // arroDirection
              color: Color.fromARGB(255, 36, 166, 231),
              size: 30,
            ),
         const   SizedBox(width: 18,),
            Text(
              "$keyPurposeName"
              ,//purpose
            style: const TextStyle(color: Colors.blueAccent,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
    );
  }
}
