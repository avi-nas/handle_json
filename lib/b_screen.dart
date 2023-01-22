import 'package:flutter/material.dart';
import 'package:handle_json/data_handler.dart';

class BScreen extends StatefulWidget {
  int id;
  List data;
  BScreen({Key? key, required this.id,required this.data}) : super(key: key);

  @override
  State<BScreen> createState() => _BScreenState(id,data);
}

class _BScreenState extends State<BScreen> {
  int  id;
  List data;
  _BScreenState(this. id,this.data);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Menu"),
      ),
      body: listViewBuilder(id,data,context),
      );
  }

}


