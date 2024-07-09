import 'package:dashboard/theme.dart';
import 'package:flutter/material.dart';

class BottomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: kWhite,
      shape: CircularNotchedRectangle(),
      notchMargin: 14.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Handle home button tap
            },
          ),
          IconButton(
            icon: Icon(Icons.swap_horiz),
            onPressed: () {
              // Handle in out button tap
            },
          ),
          SizedBox(width: 40), // The dummy child for the FAB space
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              // Handle history button tap
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle settings button tap
            },
          ),
        ],
      ),
    );
  }
}