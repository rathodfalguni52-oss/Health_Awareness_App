import 'dart:async';
import 'package:flutter/material.dart';
import 'package:health_awareness_app/main.dart';
import 'LoginPage.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>
{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFA5D6A7),
            Color(0xFFF8FAFC)
          ])
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.medical_information,size: 100,color: Color(0xFF2E7D32),),
              SizedBox(height: 20),
              Text("Health Awareness",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B5E20)
              ),),
              SizedBox(height: 12),
              Text("Empowering Communities for Better Health",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontStyle: FontStyle.italic,
              ),
              ),
              SizedBox(height: 40),
                  CircularProgressIndicator(
                    color: Color(0xFF2E7D32),
                  ),
                  SizedBox(height: 10),
                  Text("  Loading...",style: TextStyle(
                      fontSize: 14,
                    color: Colors.black54
                  ),)
            ],
          )
        ),
      )
    );
  }
}