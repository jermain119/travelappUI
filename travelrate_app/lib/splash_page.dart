import 'package:flutter/material.dart';
import 'list_page.dart';
import 'main.dart';


class SplashPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ListPage()));
    });
    return Stack(children: [
      Container(
        color: mainThemColor,
      ),
      Align(
          alignment: Alignment.center,
          child: Icon(Icons.pool, color: Colors.white, size: 80)),
      Align(
          alignment: Alignment.bottomCenter,
          child: LinearProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(Colors.white.withOpacity(0.4)),
          ))
    ]);
  }
}


