import 'package:fitnessapp/screens/settings.dart';
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
          leading: Icon(Icons.bookmark, color: Colors.white,),
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
              onPressed: (){
                Navigator.of(context).push(_createRoute());
              },
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

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SettingsPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
