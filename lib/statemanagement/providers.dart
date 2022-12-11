import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeProvider(),
    ));

class HomeProvider extends StatefulWidget {
  const HomeProvider({Key? key}) : super(key: key);

  @override
  State<HomeProvider> createState() => _HomeProviderState();
}

class _HomeProviderState extends State<HomeProvider> {
  @override
  Widget build(BuildContext context) {
    print('Hello');
    return ChangeNotifierProvider(
      create: (create) => Model(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('Provider'),
          ),
          body: Consumer<Model>(
            builder: (context, model, child) {
              return Column(
                children: [
                  Center(
                    child: Text('${model.name}'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {
                      model.changeName();
                      print(model.name);
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('Do Something'),
                  ),
                ],
              );
            },
          )),
    );
  }
}

class Model extends ChangeNotifier {
  String name = "Welcome";
  changeName() {
    name = "Nawaf";
    notifyListeners(); //rebuild to Consumer that listening of the class.
  }
}
