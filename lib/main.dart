import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key:key);

  var a=1;
  var name=['김영숙','홍길동','피자집'];

  @override
  Widget build(BuildContext context){
    return MaterialApp(

        home:Scaffold(
          appBar:AppBar(backgroundColor: Colors.blue),
          body:
            ListView.builder(
              itemCount:3,
              itemBuilder:(c,i){
                return ListTile(
                  leading: Icon(Icons.account_circle),
                  title:Text(name[i])
                );
              }
            ),

          bottomNavigationBar: BottomAppBar(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.call),
                Icon(Icons.message),
                Icon(Icons.contact_page_sharp)
              ],
            )
          ),
              )
            );
  }}