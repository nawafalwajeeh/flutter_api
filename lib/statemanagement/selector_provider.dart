// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// void main() => runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ConsumerApp(),
//     ));
//
// class ConsumerApp extends StatefulWidget {
//   const ConsumerApp({Key? key}) : super(key: key);
//
//   @override
//   State<ConsumerApp> createState() => _ConsumerAppState();
// }
//
// class _ConsumerAppState extends State<ConsumerApp> {
//   @override
//   Widget build(BuildContext context) {
//     print('Hello');
//     return ChangeNotifierProvider(
//       create: (create) => ProvTwo(),
//       child: Scaffold(
//           appBar: AppBar(
//             title: Text('Selector'),
//           ),
//           body: ListView(
//             children: <Widget>[
//               Selector<ProvTwo, int>(
//                   selector: (context, prov) => prov.(),
//
//                   builder: (context, provtwo, child) {
//                     print('Selector txt1');
//                     return Text(provtwo);
//                   }),
//               Selector<ProvTwo, int>(
//                   selector: (context, prov) => prov.showtwo,
//                   builder: (context, provtwo, child) {
//                     print('Selector txt2');
//                     return Text(provtwo);
//                   }),
//               Consumer<ProvTwo>(builder: (context, provtwo, child) {
//                 return RaisedButton(
//                   onPressed: () {
//                     provtwo.doSomething();
//                   },
//                   child: Text('Do Something 1'),
//                 );
//               }),
//               Consumer<ProvTwo>(builder: (context, provtwo, child) {
//                 return RaisedButton(
//                   onPressed: () {
//                     provtwo.doSomething2();
//                   },
//                   child: Text('Do Something 2'),
//                 );
//               })
//             ],
//           )),
//     );
//   }
// }
//
// class ProvTwo extends ChangeNotifier {
//   // String showSomething1 = "show Something";
//   var showSomething1 = 1;
//   String showSomething2 = "show Something";
//
//   get showone => showSomething1;
//   get showtwo => showSomething2;
//
//   doSomething() {
//     showSomething1++;
//     notifyListeners(); //rebuild to Consumer that listening of the class.
//   }
//
//   doSomething2() {
//     showSomething2 = "Yes Provider 2";
//     notifyListeners(); //rebuild to Consumer that listening of the class.
//   }
// }
