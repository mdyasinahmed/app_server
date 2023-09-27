import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Main Function
void main() {
  runApp(const MyApp());
}

// My App and Material App class
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity());
  }
}


// Activity Page and Scaffold Section
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold Section
    return Scaffold(
      // App Bar Section
      appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 70.0,
          toolbarHeight: 100.0,
        title: Text('Home',
          style: TextStyle(fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,),),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.add_business_sharp),
          onPressed: () {
          },
        ),
        actions: [
          IconButton(icon: Icon(Icons.search),
            onPressed: () {
            },
          ),
        ],
      ),

      // App Body Section
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('This is mod 5 Assignment.',
            style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16.0),
          Text.rich(TextSpan(children: [TextSpan(text: 'My',
            style: TextStyle(color: Colors.pink,
              fontSize: 24.0,
            ),
          ),
          TextSpan(text: ' phone',
            style: TextStyle(color: Colors.lightBlue,
              fontSize: 16.0,
            ),
          ),
          TextSpan(text: ' name',
            style: TextStyle(color: Colors.purple,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: ' Your phone name',
            style: TextStyle(color: Colors.orange,
              fontSize: 24.0,),
          ),
        ],
        ),
        ),
      ],
      ),
      ),
    );
  }
}

