import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:handle_json/b_screen.dart';
import 'package:handle_json/data_handler.dart';
void main() {
  runApp(
      const MaterialApp(
      home: ScreenA(),
    )
  );
}

class ScreenA extends StatefulWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Menu'),
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/data.json"),
        builder: (context,snapshot){
          List data = json.decode(snapshot.data.toString());
          // ignore: unnecessary_null_comparison
          if(data == null){
            return const Center(
                child: Text("Loading Failed"));
          }else{
             return listViewBuilder(0,data,context);
          }
        },
      ),
    );
  }
}

