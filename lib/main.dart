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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

        backgroundColor: Colors.orange,

        title: Text('Flutter'),

      ),


      body:




      //This code is for center container.....

      /*Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.grey,
          child: Center(child: Text('This is center of container',style:TextStyle(color: Colors.white),)),*/

    //This code is for text Widget.....Center

     /* Text('Heyy!! Flutter',style: TextStyle(
          fontSize: 50,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.amber) ,

      ),*/


      //This code is for Plain/Text Button Widgets....

     /* TextButton(
        child: Text('Button'),
        onPressed: (){
          print('Uhh hit me!!!!!');
        },

        onLongPress: (){
          print('Lonnngggggg pressed');
        },
      )*/

      //This code is for raised button

     /* ElevatedButton(
        child: Text('Elevated Button'),
        onPressed: (){
          print('button pressed');
        },
      )*/


        //Images in flutter........

       /* Center(
          child:Container(

              width: 200,
              height: 200,

              child: Image.asset('assets/images/Flut.png'))
          ,
        )*/


        // This is for Column and Rows.............................


  /*Container(

    height: 300,
    child:  Row(

        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          Text('A', style: TextStyle(fontSize: 50),),
          Text('B', style: TextStyle(fontSize: 50),),
          Text('C',style: TextStyle(fontSize: 50),),
          Text('D',style: TextStyle(fontSize: 50),),
          ElevatedButton(onPressed:(){
          },            child: Text('Click'))


        ],
      )
  )*/
      // This is for Inkwell.......

     /* Center(
        child:  InkWell(
          onDoubleTap: (){
            print('Double tapped on container');


          },

          onLongPress: (){
            print('Long pressed');
          },
          child: Container(
              width: 200,
              height: 200,
            color: Colors.amber,
            ),
        )
      )*/


      //This is scroll view Widgets........


      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
             Padding(
               padding: const EdgeInsets.only(bottom: 11),
               child: SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                     Container(
                       margin: EdgeInsets.only(right: 11),
                      height: 200,
                      width: 200,
                      color: Colors.lightGreen,
            ),

                     Container(
                       margin: EdgeInsets.only(right: 11),
                       height: 200,
                       width: 200,
                       color: Colors.lightBlueAccent,
                     ),
                     Container(
                       margin: EdgeInsets.only(right: 11),
                       height: 200,
                       width: 200,
                       color: Colors.pinkAccent,
                     ),
                     Container(
                       margin: EdgeInsets.only(right: 11),
                       height: 200,
                       width: 200,
                       color: Colors.grey,
                     ),

                   ],
                 ),
               ),
             ),

              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
/*                width: 200,*/
                color: Colors.blue,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                /*width: 200,*/
                color: Colors.pinkAccent,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                /*width: 200,*/
                color: Colors.lightBlueAccent,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                /*width: 200,*/
                color: Colors.lightGreen,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                /*width: 200,*/
                color: Colors.blue,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                /*width: 200,*/
                color: Colors.pinkAccent,
              ),

              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                /*width: 200,*/
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),
      )


      //This is ListView Widget........


      /*Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('One',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Two',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Three',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Four',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Five',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
            )
          ],
        ),
      )*/


      // This is ListView.Builder class..........
      





    );
  }
}

