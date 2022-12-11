// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart%20';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      // home: MyStream(),
      ));
}
//
// class MyStream<T> extends StatelessWidget {
//   const MyStream({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Stream App"),
//       ),
//       body: StreamBuilder<dynamic>(
//         stream: Stream.periodic(Duration(seconds: 1), (val) => val),
//         builder: (context, AsyncSnapshot snapshot) {
//           if (snapshot.hasData) {
//             if (snapshot.data >= 10) {
//               int count = 0;
//               print('${count++}');
//               return Center(
//                 child: Text('Ultimate Value Done...'),
//               );
//             }
//             return Center(
//               child: Text('${snapshot.data}'),
//             );
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text('${snapshot.error}'),
//             );
//           } else if (snapshot.data == 5) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
// }

//-------------------------------------------
//-------------------------------------------
class StreamScreen extends StatelessWidget {
  //const StreamScreen({Key? key}) : super(key: key);
  Stream<dynamic>? str = Stream.periodic(Duration(seconds: 1), (a) => a);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        body: StreamBuilder<dynamic>(
          stream: str,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              dynamic count = int.parse('${snapshot.data}');
              if (int.parse('${snapshot.data}') < 10) {
                return count;
              }
              count++;
              return Center(
                child: Text(snapshot.data.toString()),
              );
            } else {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                //wait
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }
          },
        ));
  }
}

//=----------------------------
// void main() {
//   print('main start');
//   test('https://docs.flutter.dev/search?q=http');
//   print('main end');
// }
//
// void test(dynamic url) {
//   get(url).then((Response response) {
//     if (response.statusCode == 200) {
//       print('$url is valid URL : ${response.statusCode}');
//     } else {
//       throw Exception('$url is invalid URL : ${response.statusCode}');
//     }
//   }).catchError(print); //catchError((error) => print(error))
//   //catchError((print) whenComplete(())=> print('Completed..'));
// }
