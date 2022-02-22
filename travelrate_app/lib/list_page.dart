import 'package:flutter/material.dart';
import 'main.dart';
import 'atraction_card.dart';
import 'bottom_bar_widget.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          elevation: 0,
          title: Icon(Icons.pool, color: Colors.white),
          actions: [
            Container(
                margin: EdgeInsets.only(right: 15),
                child: Icon(Icons.notifications, color: Colors.white))
          ],
        ),
        backgroundColor: mainThemColor,
        body: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: attractionsList.length,
                    itemBuilder: (context, index) {
                      Attraction atrr = attractionsList[index];
                      return AttractionCard(
                        attraction: atrr,
                      );
                    },
                  ),
                ),
              BottomBarWidget(),
              ],
            ),
          ),
        ));
  }
}
