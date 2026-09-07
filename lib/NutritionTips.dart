import 'package:flutter/material.dart';

class NutritionTips extends StatefulWidget{
  @override
  State<NutritionTips> createState()  => _NutritionTipsState();
}
class _NutritionTipsState extends State<NutritionTips>
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
                  Container(
                    decoration: BoxDecoration(
                      // boxShadow: BoxShadow(
                      //   color: Colors.grey,
                      // )
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsetsGeometry.all(10),
                        child:
                        Icon(Icons.tips_and_updates,color: Colors.green,size: 60,),
                        ),
                        Text("Tip\nInclude more fruits and vegetables in your daily diet for better health.",style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text("Nutrition Topics",style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}