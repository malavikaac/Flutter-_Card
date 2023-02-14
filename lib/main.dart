import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'The way to get started is to quit talking and begin doing',
    '   If life were predictable it would cease to be life, and be without flavor',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 143, 209, 230),
        appBar: AppBar(
          title: Text('Awesome Quote'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: quotes.map((quote) {
            // => (quote)).tolist(),
            SizedBox(
              height: 80.0,
            );
            return Text(quote);
          }).toList(),
        ));
  }
}
