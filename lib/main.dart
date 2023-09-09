import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main function
void main() {
  runApp(const MyApp());
}


// My App and Material App
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }


}



