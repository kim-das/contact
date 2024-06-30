import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(

      home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key:key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a=1;

  var name=['김영숙','홍길동','피자집'];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return Dialog(child: Text('안녕'));
          });
        },
      ),
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
              );

  }}