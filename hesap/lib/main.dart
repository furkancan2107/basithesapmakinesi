// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text("Hesap Makinesi"),
      backgroundColor: Colors.orange,
      ),
      body: MyApp(),
    ),
  ));
}
class MyApp extends StatefulWidget {
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num s1=0;
  num s2=0;
  num sonuc=0;

  TextEditingController a1 = TextEditingController();
  TextEditingController a2 = TextEditingController();


  void topla(){
    setState(() {
      s1=num.parse(a1.text);
      s2=num.parse(a2.text);
      sonuc=s1+s2;
    });
  }
    void cikart(){
    setState(() {
      s1=num.parse(a1.text);
      s2=num.parse(a2.text);
      sonuc=s1-s2;
    });
  }
    void carp(){
    setState(() {
      s1=num.parse(a1.text);
      s2=num.parse(a2.text);
      sonuc=s1*s2;
    });
  }
    void sayiyiBol(){
    setState(() {
      s1=num.parse(a1.text);
      s2=num.parse(a2.text);
      sonuc=s1/s2;
    });
  }
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      margin: EdgeInsets.all(12),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          TextField(controller: a1,
            decoration: InputDecoration(hintText: "sayi giriniz"),),
          TextField(controller: a2,
            decoration: InputDecoration(hintText: "sayi giriniz"),),
          Text("$sonuc"),
          
          RaisedButton(onPressed: (){
            topla();
          },child: Text("topla"),),
          RaisedButton(onPressed:(){
            cikart();
          } ,child: Text("Cıkart"),),
          RaisedButton(onPressed: (){
            carp();
          },child: Text("Carp"),),
          RaisedButton(onPressed: (){
            sayiyiBol();
          },child: Text("Böl"),),

        ],

      )),
      
    );
  }
}