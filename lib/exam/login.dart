import 'package:flutter/material.dart';
import 'package:flutter_api/exam/home.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (create) => ConsumerApp(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
          leading: Icon(Icons.login),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ConsumerApp>(builder: (context, con, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${con.count}',
                      style: TextStyle(fontSize: 38),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            con.incrementCounter();
                          },
                          backgroundColor: Colors.red,
                          child: Icon(Icons.add),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            con.decrementCounter();
                          },
                          child: Icon(Icons.exposure_minus_1_outlined),
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pop(HomePage());
                      },
                      color: Colors.black,
                      child: Text(
                        'back',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class ConsumerApp extends ChangeNotifier {
  int count = 0;
  incrementCounter() {
    count++;
    notifyListeners();
  }

  decrementCounter() {
    if (count > 0) {
      count--;
      notifyListeners();
    }
  }
}
