import 'package:flutter/material.dart';
import 'package:tabbar/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabbed AppBar'),
        ),
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.comment),
            ),
            Tab(
              icon: Icon(Icons.account_circle_outlined),
            ),
            Tab(
              icon: Icon(Icons.computer),
            ),
            Tab(
              icon: Icon(Icons.newspaper),
            ),
          ],
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Comments')),
            Center(child: Text('Account')),
            Center(child: Text('Computer')),
            Center(child: Text('News')),
          ],
        ),
      ),
    );
  }
}
