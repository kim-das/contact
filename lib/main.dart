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
          showDialog(context: context, builder: (context) {
            return DialogUI(
            );
          }
          );
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


class DialogUI extends StatelessWidget {
  const DialogUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
          width: 300,
          height: 300,
          child: Column(
              children: [
                TextField(),
                TextButton(onPressed: () {}, child: Text('완료')),
                TextButton(onPressed: () {
                  Navigator.pop(context);
                }, child: Text('취소'))
              ]
          )
      ),
    );
  }
}
