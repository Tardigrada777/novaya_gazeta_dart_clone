import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          textTheme: Theme.of(context).textTheme,
          title: Text('НОВАЯ ГАЗЕТА'), 
          leading: Icon(Icons.book, color: Colors.white,),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              padding: const EdgeInsets.all(0.0),
              icon: Icon(Icons.monetization_on, color: Colors.yellow,),
            ),
            IconButton(
              onPressed: (){},
              padding: const EdgeInsets.all(0.0),
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: (){},
              padding: const EdgeInsets.all(0.0),
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('Text for body'),
        ),
      ),
    );
  }
}