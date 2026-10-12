import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:health_awareness_app/HygieneSanitation.dart';
import 'dart:async';
import 'package:health_awareness_app/main.dart';

class DiseasePrevention extends StatefulWidget{
  @override
  State<DiseasePrevention> createState() => _DiseasePreventionState();
}
class _DiseasePreventionState extends State<DiseasePrevention>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xFF2E7D32),
                    Color(0xFF66BB6A)
                  ],
                      begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  ),
                  borderRadius: BorderRadiusGeometry.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  )
                ),
              ),
            Padding(padding: EdgeInsetsGeometry.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text('Prevention Tips',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
                  GestureDetector(
                    onTap: (){

                      },
                    child: Text('View All',style: TextStyle(
                        color: Color(0xFF4CAF50),
                        fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Hygienesanitation())
                  );
                },
                child: Card(//hygiene and sanitation
                  shadowColor: Colors.grey,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.clean_hands,color: Colors.green,size: 35),
                    ),
                    title:Text("Hygiene & Sanitation",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle:Text("Good hygiene keeps you healthy and safe.") ,
                    trailing: Icon(Icons.navigate_next,color: Colors.grey,size: 50),
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.grey,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.vaccines,color: Colors.blue,size: 35),
                  ),
                  title:Text("Vaccination Awareness",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle:Text("Vaccines Protect you from serious disease.") ,
                  trailing: Icon(Icons.navigate_next,color: Colors.grey,size: 50),
                ),
              ),
              Card(
                shadowColor: Colors.grey,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.coronavirus,color: Colors.purple,size: 35),
                  ),
                  title:Text("Infectious Diseases",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle:Text("Learn about infectious prevention and safety.") ,
                  trailing: Icon(Icons.navigate_next,color: Colors.grey,size: 50),
                ),
              ),
              Card(
                shadowColor: Colors.grey,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.monitor_heart,color: Colors.red,size: 35,),
                  ),
                  title:Text("Lifestyle Disease",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  subtitle:Text("Prevent lifestyle diseases with healthy habits.") ,
                  trailing: Icon(Icons.navigate_next,color: Colors.grey,size: 50),
                ),
              ),
              Card(
                color: Color(0xFF96EA99),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsetsGeometry.all(10),
                      child: Icon(Icons.shield,color: Color(0xFF2E7D32),size: 50,)),
                    Text("Regular health checkups help \n in early detection and prevention.",
                    style: TextStyle(
                      color: Color(0xFF2E7D32),
                    ),),
                  ],
                ),
              )

              // Container(
              //   width: double.infinity,
              //   child:
              //   Card(
              //     shadowColor: Colors.grey,
              //     child: Row(
              //       mainAxisAlignment: .spaceBetween,
              //       children: [
              //         Icon(Icons.clean_hands,size: 90,color: Colors.green,),
              //         Padding(padding: EdgeInsetsGeometry.all(10),
              //         child: Column(
              //           children: [
              //             Text("Hygiene & Sanitation",style: TextStyle(
              //               fontSize: 20,
              //               fontWeight: FontWeight.bold
              //             ),),
              //             Text("Good hygiene keeps you healthy and safe.")
              //           ],
              //         )),
              //       Icon(Icons.navigate_next,color: Colors.grey,size: 50)
              //       ],
              //     ),
              //   ),
              // )
            ],
        ),
      )
          ]
        )
      )
    );
  }
}