import 'package:flutter/material.dart';
import 'package:flutter_api/routes.navigations/nav/one.dart';
import 'package:flutter_api/routes.navigations/nav/three.dart';
import 'two.dart';

void main() => runApp(NavApp());

class NavApp extends StatelessWidget {
  const NavApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationApp(),
      routes: {
        "one": (context) => One(),
        "home": (context) => NavigationApp(),
        "two": (context) => Two(),
        'three': (context) => Three(),
      },
    );
  }
}

//PushReplacementNamed , PushReplacement.
class NavigationApp extends StatelessWidget {
  // const ListViewApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Page'),
        ),
        body: Column(
          children: [
            TextFormField(),
            Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('one');
                },
                child: Text('Go to Page One'),
              ),
            ),
          ],
        ));
  }
}


//----------------------------------------------
  // Navigator.of(context).pushReplacementNamed("one");
                  // Navigator.of(context)
                  //     .pushReplacement(MaterialPageRoute(builder: (context) {
                  //   return One();
                  // }));
//-------------------------------
// //pop
// class NavigationApp extends StatelessWidget {
//   // const ListViewApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Test Page'),
//         ),
//         body: Column(
//           children: [
//             Center(
//               child: RaisedButton(
//                 onPressed: () {
//                   Navigator.of(context).pushNamed('one');
//                   // print(Navigator.of(context).canPop());
//                   // Navigator.of(context).pop();
//                 },
//                 child: Text('Go to Page One'),
//               ),
//             ),
//           ],
//         ));
//   }
// }
//-------------------------------------
//push
/*class NavigationApp extends StatelessWidget {
  // const ListViewApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Page'),
        ),
        body: Column(
          children: [
            Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('one');
                },
                child: Text('Go to Page One'),
              ),
            ),
          ],
        ));
  }
}*/
 // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   return One();
                  // }));