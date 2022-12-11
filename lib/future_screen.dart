import 'package:flutter/material.dart';

class FutureScreen extends StatelessWidget {
  const FutureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        body: FutureBuilder(
          future: Future.delayed(
              Duration(seconds: 1), () => throw Exception('no internet')),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Text(snapshot.data),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              //wait
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}

//--------------------------------
// class FutureScreen extends StatelessWidget {
//   const FutureScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<int>(
//       future: Future.delayed(Duration(milliseconds: 500), () => 2),
//       builder: (context, snapshot) => Scaffold(
//         appBar: AppBar(
//           title: Text(
//               '${snapshot.hasData ? snapshot.data.toString() : 'no data'}'),
//         ),
//         body: Center(
//           child: Text('Future Data'),
//         ),
//       ),
//     );
//   }
// }
