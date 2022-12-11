import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormApp(),
    ));

class FormApp extends StatefulWidget {
  const FormApp({Key? key}) : super(key: key);

  @override
  State<FormApp> createState() => _FormAppState();
}

class _FormAppState extends State<FormApp> {
  var formKey = GlobalKey<FormState>();
  var txt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation Demo'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.abc,
                      size: 40,
                      color: Colors.pink,
                    ),
                    labelText: 'Write Here',
                    labelStyle: TextStyle(color: Colors.pink),
                    hintText: "Write your name here",
                    hintStyle: TextStyle(color: Colors.blue),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.pink, width: 3)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.pink, width: 3)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.pink, width: 3)),
                  ),
                  controller: txt,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "You should write something";
                    }
                    if (value.length < 3) {
                      return "the text should be 3 letters or more";
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pink),
                      padding: MaterialStateProperty.all(EdgeInsets.all(15))),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Hello ${txt.text}')));
                    }
                  },
                  child: Text('Submit')),
            ],
          )),
    );
  }
}
