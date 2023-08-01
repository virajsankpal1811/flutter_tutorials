import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_http/model.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<SamplePost> samplePosts= [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount: 1,
      itemBuilder: (context, index) {
        return Container(
          height: 130,
          color: Colors.greenAccent,
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          margin: const EdgeInsets.all(10),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Text(
                'user id: data',
                style: TextStyle(fontSize: 22),
              ),
              Text(
                'id: data',
                style: TextStyle(fontSize: 18),
              ),

              Text(
                'title: data',
                style: TextStyle(fontSize: 18),
              ),

              Text(
                'body: data',
                style: TextStyle(fontSize: 18),
              ),

            ],
          ),

        );
      }
    );
  }

  Future<List<SamplePosts>> getData() async{
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'))
  var data = jsonDecode(response.body.toString());

if(response.statusCode == 200)
  {
    for(Map<String, dynamic> index in data){
      samplePosts.add(samplePosts.fromJson(index));
    }
    return samplePosts;
  }
    else{
      return samplePosts;
    }
  }

}
