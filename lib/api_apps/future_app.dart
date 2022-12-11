import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text("Future")),
          body: Center(
            child: Text('Hello world'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              const Center(
                child: Text('No Hello'),
              );
            },
            child: Text('hello'),
          ),
        ),
      ),
    );
