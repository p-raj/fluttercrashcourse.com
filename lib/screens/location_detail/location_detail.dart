import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Hello'),
     ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: <Widget>[
         ImageBanner("assets/images/kd.jpg"),
         TextSection("summary", "something 1"),
         TextSection("summary", "something 2"),
         TextSection("summary", "something 3"),
       ],
     ),
    );
 }   
}