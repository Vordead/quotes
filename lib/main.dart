import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [

    Quote(author: 'Steve Jobs',text: 'Innovation distinguishes between a leader and a follower.'),
    Quote(author: 'Steve Jobs',text: 'The people who are crazy enough to think they can change the world are the one who do'),
    Quote(author:'Mohamad Hamade',text: 'Willpower knows no obstacles' ),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
      title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) =>QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList()
      ),
    );
  }
}
