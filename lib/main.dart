import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: AwesomeQuotes()
));

class AwesomeQuotes extends StatefulWidget {
  const AwesomeQuotes({super.key});

  @override
  State<AwesomeQuotes> createState() => _AwesomeQuotesState();
}

class _AwesomeQuotesState extends State<AwesomeQuotes> {

  List<Quote> quotes = [
    Quote(text: 'Be yourself; everyone else is already taken', author: 'Oscar Wilde'),
    Quote(text: 'I have nothing to declare except my genius', author: 'Oscar Wilde'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'Oscar Wilde')
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Center(
              child: Text(
                  '${quote.text}',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
                ),
              ),
            ),
            SizedBox(height: 6.0),
            Center(
              child: Text(
                '${quote.author}',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[800]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

