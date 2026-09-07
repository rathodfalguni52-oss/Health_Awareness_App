import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:health_awareness_app/main.dart';

class Profile extends StatefulWidget{
  //const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile>
{
  @override
  Widget build(BuildContext context)
  {
    var name=['My Progress','Reminders''Bookmarks','Privacy and Security'];
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [

          //Green background
          Container(
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF2E7D32),
                Color(0xff66bb6a),
              ],
                begin: AlignmentGeometry.topLeft,
                end: AlignmentGeometry.bottomRight
              )
            ),
          ),

          //White container
          Positioned(
            top: 210,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusGeometry.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: Padding(padding: EdgeInsets.only(
                  top: 90,
                  left: 25,
                  right: 25
                ),
                  child: Column(
                    children: [
                      Text("Name",style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 8,),
                      Text("abc@example.com",style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                      ),),
                      SizedBox(height: 20,),
                      OutlinedButton.icon(onPressed: (){},
                        icon: Icon(Icons.edit),
                        label: Text("Edit Profile"),
                         ),
                    ],
                  ),
                ),
              )
          ),

          Positioned(
              top: 140,
              left: 100,
              right: 100,
              child:Container(
                width: 130,
                height: 130,
                child: CircleAvatar(
                  child: Icon(Icons.person,size: 90,),
                ),
              )
          ),
          Positioned(
            top: 15,
              right: 0,
              left: 0,
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage())
                );
              },
                icon:Icon(CupertinoIcons.back,color: Colors.white,size: 30,)),
              Text("My Profile",style: TextStyle(color: Colors.white,fontSize: 20)),
              Icon(Icons.settings,color: Colors.white,size: 30,)
            ],
          ))
        ],
      ),
    );
  }
}