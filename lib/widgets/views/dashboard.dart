import 'package:flutter/material.dart';
import 'package:yala/static/stores.dart';
import 'package:yala/widgets/app_bar.dart';
import 'package:yala/widgets/cards/list_white_div.dart';

class ViewDashbord extends StatelessWidget {
  const ViewDashbord({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBarX(
        title: 'Dashboard',
        isTransparent: true,
      ),
      body: Column(
        children: <Widget>[
          ListWhiteDiv(
            store: Stores.TextNoti,
          ),
          RaisedButton(
            onPressed: () {
              Stores.TextNoti.titles.insert(0, 'value');
              Stores.TextNoti.titles = Stores.TextNoti.titles;
            },
          ),
        ],
      ),
    );
  }
}

//  body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, '/detail');
//           },
//         ),
//       ),
