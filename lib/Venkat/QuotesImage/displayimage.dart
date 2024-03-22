import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appdataimage.dart';

class DisplayImage extends StatelessWidget {
  //Var
  final AppDataImage appDataImage;

  const DisplayImage({super.key, required this.appDataImage,});

  @override
  Widget build(BuildContext context) {
   return Stack(
     children: [
       Container(
         margin: EdgeInsets.only(bottom: 10,top: 5),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(30),
           image: DecorationImage(
               image: AssetImage(appDataImage.image),
               fit: BoxFit.cover),
           boxShadow: [
             BoxShadow(
               offset: Offset(1, 3),
               blurRadius: 10,
             )
           ]
         ),
       ),
     ],
   );
  }
}
