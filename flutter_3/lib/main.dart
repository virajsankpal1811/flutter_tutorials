/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title:'Hello'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GridView.count(crossAxisCount: 2,
      crossAxisSpacing: 11,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.orange,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.red,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.green,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.lightBlue,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.lightGreenAccent,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.purple,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: Colors.brown,),
          ),
        ],

      )
    );
  }
}


 */

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title:'Hello'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text(widget.title),
        ),
        body: Stack(
          children: [
            Container(
              width: 120,
              height: 100,
              color: Colors.blueGrey,
            )
          ],
        )
    );
  }
}
