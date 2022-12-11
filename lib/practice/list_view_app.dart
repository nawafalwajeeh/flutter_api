import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewApp(),
    );
  }
}

class ListViewApp extends StatelessWidget {
  // const ListViewApp({Key? key}) : super(key: key);

  List mobiles = [
    {"name": "s20 ultra", "screen": "6.4", "cpu": "8 core"},
    {"name": "s21 ultra", "screen": "6.5", "cpu": "8 core"},
    {"name": "s10 ultra", "screen": "6.2", "cpu": "8 core"},
    {"name": "s9 ultra", "screen": "6.1", "cpu": "8 core"},
    {"name": "iphone 12pro max", "screen": "6.2", "cpu": "8 core"},
    {"name": "iphone 12pro max", "screen": "6.2", "cpu": "8 core"},
    {"name": "iphone 12pro max", "screen": "6.2", "cpu": "8 core"},
    {"name": "iphone 12pro max", "screen": "6.2", "cpu": "8 core"},
    {"name": "iphone 12pro max", "screen": "6.2", "cpu": "8 core"},
    {"name": "iphone 12pro max", "screen": "6.2", "cpu": "8 core"},
    {"name": "iphone 12pro max", "screen": "6.2", "cpu": "8 core"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
          child: GridView.builder(
        itemCount: mobiles.length,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 30),
        itemBuilder: (context, i) {
          return Container(
            // margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(right: 10, left: 10),
            child: ListTile(
              tileColor: Colors.red,
              title: Text('${mobiles[i]['name']}'),
              subtitle: Text('Screen ${mobiles[i]['screen']}'),
            ),
          );
        },
      )),
    );
  }
}

/*
ListView.separated(
          separatorBuilder: (context, int i) {
            return Divider(
              color: Colors.red,
              height: 2,
              thickness: 2,
            );
          },
          itemCount: mobiles.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text('${mobiles[i]['name']}'),
              subtitle: Text('Screen ${mobiles[i]['screen']}'),
              trailing: Text('cpu ${mobiles[i]['cpu']}'),
            );
          }),
//-----------------------------
ListView.builder(
          itemCount: mobiles.length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text('${mobiles[i]['name']}'),
              subtitle: Text('Screen ${mobiles[i]['screen']}'),
              trailing: Text('cpu ${mobiles[i]['cpu']}'),
            );
          }),

//-----------------------
ListView(
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.vertical,
          children: [
            Text('Car'),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  child: Text('Car Mercedes'),
                  color: Colors.red,
                  width: 200,
                  height: 200,
                ),
                Container(
                  child: Text('Car BMW'),
                  color: Colors.green,
                  width: 200,
                  height: 200,
                ),
              ],
            ),
            Text('Mobile'),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  child: Text('Mobile S20 Ultra'),
                  color: Colors.blue,
                  width: 200,
                  height: 200,
                ),
                Container(
                  child: Text('Mobile S21 Ultra'),
                  color: Colors.yellow,
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          ],
        ),


*/