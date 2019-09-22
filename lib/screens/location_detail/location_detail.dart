import 'package:flutter/material.dart';
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
         TextSection(Colors.red, Text('hi')),
         TextSection(Colors.green, Text('hi')),
         TextSection(Colors.blue, Text('hi')),
       ],
     ),
    );
 }   
}