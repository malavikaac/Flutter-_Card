import 'package:flutter/material.dart';
import 'package:card/quote.dart';
import 'package:card/quote_dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'oscar wilde',
        text: 'The way to get started is to quit talking and begin doing'),
    Quote(
        author: 'oscar wilde',
        text:
            'If life were predictable it would cease to be life, and be without flavor')
  ];

  // Widget quoteTemplate(quote) {
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 228, 230, 221),
        appBar: AppBar(
          title: Text('Awesome Quote'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 243, 161, 161),
        ),
        body: Column(
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ));
  }
}


