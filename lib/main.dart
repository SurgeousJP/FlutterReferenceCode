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
    Quote(text: 'Be yourself; everyone else is already taken', author: 'A'),
    Quote(text: 'I have nothing to declare except my genius', author: 'B'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'C')
  ];

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
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),

      ),
    );
  }
}

