import 'package:flutter/material.dart';
import 'package:flutter_api/future_screen.dart';
import 'package:flutter_api/stream_screen.dart';
import 'package:http/http.dart';

// void main() => runApp(ProviderApp());

//==>
// void main() async {
//   // print('hello nawaf');
//   // Future(() {
//   //   print('hello nawaf');
//   // });
//
//   // Future.delayed(Duration(milliseconds: 500), () {
//   //   print('hello nawaf');
//   // });
//   //print('hello mohammed');
//   //print('Facebook');
//   //future :
//   // var myfuture = Future.delayed(Duration(milliseconds: 500), () {
//   //   return 2;
//   // });
//   //print(myfuture);
//   //to extract value use then()
//   // myfuture.then((value) {
//   //   print('$value');
//   //   /*  (value) => print(value); */
//   // });
//   // print('hello mohammed');
//   // print('Facebook');
//   //Future -> return single value.
//   //------------------------------------
//   //stream
//
//   // var mystream = Stream.periodic(Duration(seconds: 1), (a) {
//   //   return a;
//   // });
//   // var result = mystream.listen((val) {
//   //   print(val);
//   // });
//   // result.onData((data) {
//   //   if (data <= 10) {
//   //     print(data);
//   //   } else {
//   //     result.pause();
//   //   }
//   // });
//   // //Stream -> return StreamOfValues -> Data Flow.
//   // //-----------------
//   // print('hello mohammed');
//   // print('Facebook');
//   //------------------------
//
//   // await Future.delayed(Duration(seconds: 1), () {
//   //   print("username and password");
//   // });
//
//   var myfuture = await Future.delayed(Duration(seconds: 1), () {
//     return 2;
//   });
//   print(myfuture);
//   //myfuture.then((value) => print(value));
//   print('check username and password');
//   print('Facebook');
//
//   runApp(App());
// }
//
// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //home: FutureScreen(),
//       home: StreamScreen(),
//     );
//   }
// }
