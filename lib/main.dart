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
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
              child: Image.asset('assets/ganyu.jpg'),
          ),
          Expanded(
            flex: 1,
              child: Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.cyan,
                child: Text('1'),
              )
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.amber,
                child: Text('1'),
              )
          ),
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.orange[200],
                child: Text('1'),
              )
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.orange[200],
        child: Text('click me pls'),
      ),
    );
  }
}

