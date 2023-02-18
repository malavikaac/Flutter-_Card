//import 'dart:html';

import 'package:flutter/material.dart';
import 'quote.dart';

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
  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Container(
        
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: <Widget>[
            Text(quote.text,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 145, 228, 200),
                )),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            )
          ]),
        ),
      ),
    );
  }

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
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ));
  }
}
