import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobileapp/user.dart';

void main() {
  runApp(logoScreen());
}

class logoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.cover)),
          child: attention()
            )
          )
        );
  }
}

class attention extends StatefulWidget {
  const attention({super.key});

  @override
  State<attention> createState() => _attentionState();
}

class _attentionState extends State<attention> {
  @override
  void initState() {
    super.initState();
    for(var i = 0;i<2;i++){
    Timer.periodic(Duration(seconds: 5), (timer) { 
      setState(() {
        _visible = !_visible;
      });
    });}
  }
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(opacity: _visible ? 1.0 : 0.0,
     duration: const Duration(seconds: 1),
     child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("คำแนะนำการใช้แอพพลิเคชัน",style: TextStyle(fontSize: 22)),
          Text("ผู้ใหญ่ควรเล่นปล่อยให้เด็กงงกับโค้ดต่อไปในมื้อเช้าของเราที่จะเก็บในลาวาของคอมพิวเตอร์คีย์บอร์ดนาโนที่สูงใหญ่และเสียดสีแรงกล้าสุดแกร่ง",style: TextStyle(fontSize: 18),)
        ],
      ),
     ),);
  }
}