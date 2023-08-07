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


 */


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FormValidation",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String email = "";
  String password = "";

  void _submit() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'E-Mail'),
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      setState(() {
                        email = value;
                      });
                    },

                  ),
                  // this is where the
                  // input goes
                  TextFormField(
                    decoration: InputDecoration(labelText: 'password'),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,

                    onFieldSubmitted: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                  ),

                ],
              ),
            ),
            // this is where
            // the form field
            // are defined
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                email.isEmpty ? Text("No data") : Text(email),
                SizedBox(
                  height: 10,
                ),
                password.isEmpty ? Text("No Data") : Text(password),
              ],
            )
          ],
        ),
      ),
    );
  }
}
