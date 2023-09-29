import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageFeed(),
    );
  }
}

class ImageFeed extends StatelessWidget {
  final List<String> images = [
    "https://via.placeholder.com/150",
    // Add more image URLs here
  ];

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text("News Feed"),
      ),
      body: orientation == Orientation.portrait
          ? buildPortraitFeed()
          : buildLandscapeFeed(),
    );
  }

  Widget buildPortraitFeed() {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Image.network(images[index], width: 150, height: 150),
          ),
        );
      },
    );
  }

  Widget buildLandscapeFeed() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Minimum of 2 columns in landscape
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Image.network(images[index], width: 150, height: 150),
          ),
        );
      },
    );
  }
}
