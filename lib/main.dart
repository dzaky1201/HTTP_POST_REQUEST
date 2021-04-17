import 'package:flutter/material.dart';
import 'package:http_request_training/post_result_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult? postResult;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('API DATA'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null) ? postResult!.id + " | " +
                  postResult!.name + " | " + postResult!.job + " | " +
                  postResult!.created : "Data Kosong"),
              ElevatedButton(
                onPressed: () {
                  PostResult.connectToApi("Dzaky", "Developer").then((value){
                    postResult = value;
                    setState(() {
                    });
                  });
                },
                child: Text('POST'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}