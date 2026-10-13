import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:health_awareness_app/DiseasePrevention.dart';
import 'package:health_awareness_app/LoginPage.dart';
import 'package:health_awareness_app/NutritionTips.dart';
import 'SplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:health_awareness_app/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFF212121)
          ),
          headlineMedium: TextStyle(
                fontSize: 20,
                color: Color(0xFF212121)
              ),
          titleSmall: TextStyle(
            fontSize: 10,
              color: Color(0xFF212121)
          )
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E7D32),
        elevation: 0,
        leading: IconButton(onPressed: (){
          
        },
            icon: Icon(Icons.menu),color: Colors.white,),
        title: Text("Health Awareness",style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          //fontWeight: FontWeight.w600
        ),),
        actions: [
          IconButton(onPressed: (){}, 
              icon: Icon(Icons.notifications_none,color: Colors.white,)
          ),
          Padding(padding: EdgeInsetsGeometry.only(right: 12),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile(),
                ),
                );
              },
              icon:Icon(Icons.person,color: Color(0xFF2E7D32),),
            )
          ),)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
          onTap: (index){
          if(index==4){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()
            ),
            );
          }
          if(index==1)
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DiseasePrevention()
              ),
              );
            }
          },
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.blueGrey,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.monitor_heart,color: Colors.blueGrey),label: "Health"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.book,color: Colors.blueGrey),label: "Learn"),
            BottomNavigationBarItem(icon: Icon(Icons.people,color: Colors.blueGrey),label: "Community"),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.blueGrey),label: "Profile",)
          ]
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 3,
              child: Container(//Main Container
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                Container(//Cards
                    child:Padding(padding: EdgeInsetsGeometry.all(15),
                      child:  Column(
                        children: [
                          Row(//Quick Access for cards
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text("Quick Access"),
                              RichText(text: TextSpan(
                                  text: "View all",
                                  style: TextStyle(
                                      color: Color(0xFF4CAF50),
                                      fontWeight: FontWeight.bold
                                  ),
                                  recognizer: TapGestureRecognizer()..onTap=(){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage())
                                    );
                                  }
                              ),
                              )
                            ],
                          ),
                          Row(//cards
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NutritionTips())
                                  );
                                },
                                child:tabs('Nutrition \n    Tips',Icons.apple )
                              ),
                              tabs('Excercise \n    Guide', Icons.fitness_center),
                              tabs('  Mental\nWellness', Icons.face),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DiseasePrevention())
                                  );
                                },
                                child: tabs('  Disease\nPrevention', Icons.health_and_safety)
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                ),

              ],
            ),
          )
          )
        ],
      )
    );
  }
  Widget tabs(String name,IconData icon)
  {
    return Card(
      shadowColor: Colors.grey,
      elevation: 5,
      child:Padding(padding: EdgeInsetsGeometry.only(right: 10,left: 10,top: 10,bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(icon,
            color: Colors.green,
            size: 30),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: Color(0xFFC8F8CA),
                borderRadius: BorderRadiusGeometry.circular(20)
            ),
          ),
          Text(name)
        ],
      ),
      )
    );
  }
}
