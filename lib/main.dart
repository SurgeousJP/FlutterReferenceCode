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
      body: Center(
          // // Text Widget

          // child: Text(
          //     "Hello, let's try our best to make our dreams come true",
          //     textAlign: TextAlign.justify,
          //     style: TextStyle(
          //         fontSize: 30.0,
          //         fontWeight: FontWeight.bold,
          //         letterSpacing: 2.0,
          //         color: Colors.black87,
          //         fontFamily: 'Londrina Solid'
          //     )
          // )

        // // Image Widget

        // * NetworkImage
        // child: Image(
        //   image: NetworkImage('https://drive.google.com/uc?id=1FgVvaKZEAP6fU2cWjPTD-4A6RS95Rcv8')
        // ),

        // * AssetImage
        // List the file in assets in pubspec.yaml
        // child: Image(
        //   image: AssetImage('assets/ganyu.jpg'),
        // ),
        // Or list the directory and get it straight
        // (It could apply the same to network)
        // child: Image.asset('assets/ganyu.jpg')

        // // Button and Icon Widget

        // child: ElevatedButton.icon(
        //   onPressed: () {
        //     print('You clicked me, I wonder if i should love you :))');
        //   },
        //   icon: Icon(
        //     Icons.mail,
        //   ),
        //   label: Text('Mail me pls !'),
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: Colors.amber
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.orange[200],
        child: Text('click me pls'),
      ),
    );
  }
}

