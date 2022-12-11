import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Column(children: [
        Text('Page One'),
        RaisedButton(
          onPressed: () {
            // print(Navigator.of(context).canPop());
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
            // Navigator.of(context).pushNamed('home');
          },
          child: Text('Back'),
        ),
        RaisedButton(
          onPressed: () {
            // print(Navigator.of(context).canPop());
            //Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed('two');
          },
          child: Text('Go to Page two'),
        ),
        RaisedButton(
          onPressed: () {
            // print(Navigator.of(context).canPop());
            //Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed('home');
          },
          child: Text('Go to Page home'),
        ),
      ]),
    );
  }
}
