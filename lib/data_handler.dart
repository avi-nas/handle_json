import 'package:flutter/material.dart';
import 'package:handle_json/c_screen.dart';
import 'b_screen.dart';

bool containChild(List data, int index){
  for (var element in data) {
    if(element["parent"]==index){
      return true;
    }
  }
  return false;
}

Padding listViewBuilder(int id,List data,BuildContext con){
  return Padding(
    padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
    child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index){
          if(data[index]["parent"]==id) {
            return _tile(" ${data[index]["name"]}", "", Icons.list,data,index+1,con);
          }
          else{
            return const SizedBox(height: 0,width: 0,);
          }
        }),
  );
}

ListTile _tile(String title, String subtitle, IconData icon,List data,int index,BuildContext context) {
  return ListTile(
      onTap: (){
    //check if child is present or not. Return True if contain Child
    bool childPresent = containChild(data, index);
    if(childPresent == true){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BScreen(id: index,data: data,)));
    }
    else{
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CScreen()));
    }
  },
    title: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),);
}

