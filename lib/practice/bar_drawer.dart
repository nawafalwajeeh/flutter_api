import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarDrawerApp(),
    ));

class AppBarDrawerApp extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  AppBarDrawerApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text('HomePage'),
          //leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.alarm),
              onPressed: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
            ),
          ],
          // shadowColor: Colors.red,
          // elevation: 100,
          backgroundColor: Colors.red,
          // systemOverlayStyle: SystemUiOverlayStyle.dark,
          centerTitle: true,
        ),
        drawerScrimColor: Colors.transparent,
        endDrawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Nawaf'),
                accountEmail: Text('nawaf@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text('N'),
                ),
              ),
              ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
              ListTile(
                title: Text('Help'),
                leading: Icon(Icons.help),
                onTap: () {},
              ),
              ListTile(
                title: Text('About'),
                leading: Icon(Icons.info),
                onTap: () {},
              ),
              ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Center(
          child: Container(
            child: RaisedButton(
              onPressed: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
              child: Text('Open Drawer'),
            ),
          ),
        ));
  }
}
