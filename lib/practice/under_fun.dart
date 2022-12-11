import 'package:flutter/material.dart';

class Pracice {
  void fun({f(y)?, x}) {
    print("hello");
  }
}

m({mymethod(p)?, y}) {
  print('My Method');
}

void main() {
  Pracice p = new Pracice();
  p.fun(f: (_) {
    print('Calling fun function');
  });
  m(mymethod: (_) => print('hello'));
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
