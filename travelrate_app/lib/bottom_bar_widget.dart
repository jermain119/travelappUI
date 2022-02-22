import 'package:flutter/material.dart';
import 'main.dart';

final List<BottomBarItem> barItemsList = [
  BottomBarItem(label: 'Home', isSelected: true, icon: Icons.home),
  BottomBarItem(label: 'Account', isSelected: false, icon: Icons.person),
  BottomBarItem( label: 'Bookings', isSelected: false, icon: Icons.pending_actions),
  BottomBarItem(label: 'Payments', isSelected: false, icon: Icons.payments),
  BottomBarItem(label: 'More', isSelected: false, icon: Icons.more_horiz),
];

class BottomBarWidget extends StatefulWidget {
  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  List<BottomBarItem> barItems = barItemsList;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(barItems.length, (index) {
            var barItem = barItems[index];

            return GestureDetector(
                onTap: () {
                  setState(() {
                    barItems.forEach((element) {
                      element.isSelected = barItem == element;
                    });
                  });
                },
                child: Column(children: [
                  Icon(barItem.icon,
                      color: barItem.isSelected! ? mainThemColor : Colors.grey),
                  Text(barItem.label!,
                      style: TextStyle(
                          color: (barItem.isSelected!
                              ? mainThemColor
                              : Colors.grey),
                          fontSize: 11))
                ]));
          })),
    );
  }
}

class BottomBarItem {
  String? label;
  bool? isSelected;
  IconData? icon;

  BottomBarItem({this.label, this.isSelected, this.icon});
}
