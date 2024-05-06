import 'package:flutter/material.dart';

class NameAppBar extends StatelessWidget {
  const NameAppBar({super.key,required this.requierdPurpose});
 final  String requierdPurpose;
    @override
  Widget build(BuildContext context) {
    return   Padding(
            padding:const  EdgeInsets.symmetric(vertical: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Select Your ",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                 " $requierdPurpose",
                  style: const TextStyle(
                      color: Colors.amber,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
  }
}