import 'package:flutter/material.dart';
import 'package:flutter_api/routes.navigations/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: FirstApp(),
      // routes: {
      //   '/second': (_) => SecondApp(data: 'abc'),
      // },
      //{(RouteSettings) => Route<dynamic> onGenerateRoute},
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'First Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Go to Second'),
              onPressed: () {
                Navigator.of(context).pushNamed('/second', arguments: 123);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondApp extends StatelessWidget {
  final String? data;
  const SecondApp({
    Key? key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Second Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              data!,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
