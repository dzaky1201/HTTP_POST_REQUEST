import 'package:flutter/material.dart';
import 'package:http_request_training/post_result_model.dart';
import 'package:http_request_training/user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "No Data";

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
              // contoh hasil post
              // Text((postResult != null) ? postResult!.id + " | " +
              //     postResult!.name + " | " + postResult!.job + " | " +
              //     postResult!.created : "Data Kosong"),
              Text(output),
              ElevatedButton(
                onPressed: () {
                  // contoh post data
                  // PostResult.connectToApi("Dzaky", "Developer").then((value){
                  //   postResult = value;
                  //   setState(() {
                  //   });
                  // });
                  User.getUser("2").then((value) {
                    output = "";
                    for (int i = 0; i < value.length; i++) {
                      output = output + " [ " + value[i].name + " ] ";
                    }
                    setState(() {});
                  });
                },
                child: Text('GET'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
