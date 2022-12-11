import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConsumerApp(),
    ));

class ConsumerApp extends StatefulWidget {
  const ConsumerApp({Key? key}) : super(key: key);

  @override
  State<ConsumerApp> createState() => _ConsumerAppState();
}

class _ConsumerAppState extends State<ConsumerApp> {
  @override
  Widget build(BuildContext context) {
    print('Hello');
    return ChangeNotifierProvider(
      create: (create) => ProvOne(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('Consumer'),
          ),
          body: ListView(
            children: <Widget>[
              Consumer<ProvOne>(builder: (context, provone, child) {
                print('Consumer txt1');
                return Text(provone.showSomething1);
              }),
              Consumer<ProvOne>(builder: (context, provone, child) {
                print('Consumer txt2');
                return Text(provone.showSomething2);
              }),
              Consumer<ProvOne>(builder: (context, provone, child) {
                print('Consumer button');
                return RaisedButton(
                  onPressed: () {
                    provone.doSomething1();
                  },
                  child: Text('Do Something : ' + provone.showSomething1),
                );
              })
            ],
          )),
    );
  }
}

class ProvOne extends ChangeNotifier {
  String showSomething1 = "show Something 1";
  String showSomething2 = "show Something 2";
  doSomething1() {
    showSomething1 = "do something 1";
    notifyListeners(); //rebuild to Consumer that listening of the class.
  }

  doSomething2() {
    showSomething2 = "do something 2";
    notifyListeners(); //rebuild to Consumer that listening of the class.
  }
}
