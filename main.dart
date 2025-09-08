import 'package:flutter/material.dart';

/*
The purpose of this syntax is to import the flutter material design library widgets,
tools for building a material design Ui google design system

import - dart keyword to include external libraries

package:flutter - refers to the material design packages

this is essential for building flutter apps w/ a standard
 * */

void main(){
  runApp(const MyApp()); //flutter function that initialized the app and attaches root widger (MyApp()) to the screen



}

class MyApp extends StatelessWidget{//MyApp Extends custom class
  // stateless widget - base class for widgets that do not hold mutable  - means no changes

  const MyApp ({super.key});

  @override //indicates the method overrides the statelessWidget
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Poster.jpg',
              width: 500,
              height: 500,
            ),
            const Text(
              'Darling in the FranXX',
              style: TextStyle(fontSize: 50),
            ),
            const Text(
              'Darling in the Franxx is set in a dystopian future where humanity lives in mobile fort cities and is threatened by giant creatures called Klaxosaurs. Humanities last defense is giant mechas known as Franxx, piloted by specially raised children called Parasites. The story follows Hiro and the other Parasites as they battle these monsters, forming unique partnerships and navigating their confined lives and burgeoning emotions. ',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      )
    );
    
    
    
  }
}