import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

// So you kinda can have some kind of keyword
// to generate you code automatically (stless and [Tab] is an example)
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'My first flutter application',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.black,
                fontFamily: 'LondrinaSolid'
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange[200]
      ),
      body: Container(
        // Padding: The distance between the content and its boundary
        padding: EdgeInsets.all(20.0),
        // Margin: The distance between the boundary to another one
        margin: EdgeInsets.all(20.0),
        color: Colors.orange[200],
        child: Text(
          'Hello to the world',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.black87,
            fontFamily: "LondrinaSolid"
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.orange[200],
        child: Text('click me pls'),
      ),
    );
  }
}

