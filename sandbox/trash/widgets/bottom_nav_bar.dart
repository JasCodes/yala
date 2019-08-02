import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/icon_data.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/ui.dart';

class WtBottomNavBar extends StatelessWidget {
  const WtBottomNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bcUI = Provider.of<BcUI>(context);

    return Container(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 18,
        selectedFontSize: 14,
        selectedIconTheme: IconThemeData(color: Color.fromRGBO(90, 97, 247, 1)),
        // selectedLabelStyle: TextStyle(color: Color.fromRGBO(90, 97, 247, 1)),
        // fixedColor: Color.fromRGBO(90, 97, 247, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(IconDataRegular(0xf15c)),
            title: Text('Accounts'),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconDataSolid(0xf543)),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconDataSolid(0xf0c0)),
            title: Text('School'),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconDataSolid(0xf0c0)),
            title: Text('School'),
          ),
        ],
        currentIndex: bcUI.tabIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          bcUI.tabIndex = index;
        },
      ),
    );
  }
}
