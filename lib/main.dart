import 'package:flutter/material.dart';
import 'package:whatapp/tabbar.dart';
void main(){
  runApp(apple());
}
class apple extends StatelessWidget {
  const apple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: tabbar(),
    );
  }
}
