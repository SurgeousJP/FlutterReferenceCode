import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}

