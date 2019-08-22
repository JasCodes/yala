// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';

// main() {
//   debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
//   runApp(
//     MaterialApp(
//       home: Home(),
//     ),
//   );
// }

// class Home extends HookWidget {
//   const Home({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final show = useState(false);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scaffold'),
//       ),
//       body: Container(
//         color: Colors.lightGreen,
//         child: Stack(
//           children: <Widget>[
//             RaisedButton(
//               onPressed: () {},
//               child: Text('but'),
//             ),
//             // Container(
//             //   color: Color(0xcc000000),
//             //   child: Column(
//             //     children: <Widget>[Container()],
//             //   ),
//             // ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Container(
//                     color: Colors.blue,
//                     height: 0,
//                   ),
//                   BottomAppBar(
//                     color: Colors.pink,
//                     elevation: 0,
//                     child: Row(
//                       children: <Widget>[
//                         IconButton(
//                           icon: Icon(Icons.ac_unit),
//                           onPressed: () {},
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               width: 100,
//               height: 200,
//               child: ModalBarrier(
//                 dismissible: false,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
