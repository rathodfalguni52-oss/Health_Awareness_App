import 'package:flutter/material.dart';
import 'DiseasePrevention.dart';
import 'package:flutter/cupertino.dart';

class Hygienesanitation extends StatefulWidget
{
  @override
  State<Hygienesanitation> createState()=> _HygieneSanitationState();
}
class _HygieneSanitationState extends State<Hygienesanitation>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E7D32),
        leading: IconButton(
            onPressed: ()=>Navigator.pop(context),
            icon: Icon(CupertinoIcons.back,
            color: Colors.white)
        ),
        title:Text('Hygiene & Sanitation',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: SingleChildScrollView(
        child:Padding(padding: EdgeInsetsGeometry.all(15),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 200,
            ),
            Text('Why it Matters',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
            SizedBox(height: 5,),
            Text('Good hygiene and sanitation prevent the spread of germs,reduce the risk of infection,and keep your community healthy and safe.',
              style: TextStyle(
                  fontSize: 15
              ),
              softWrap: true,
            ),
            SizedBox(height: 20,),
            Text('Key Tips',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
            SizedBox(height: 5),
            Card(
              color: Color(0xFFE6FFE7),
              child: ListTile(
                leading: Icon(CupertinoIcons.check_mark_circled_solid,
                  color: Color(0xFF2E7D32),
                  size: 35,
                ),
                title: Text('Wash your hands regularly with soap and water.'),
              ),
            ),
            Card(
              color: Color(0xFFE6FFE7),
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.check_mark_circled_solid,
                  color: Color(0xFF2E7D32),
                  size: 35,
                ),
                title: Text('Keep your surroundings clean and free from waste.'),
              ),
            ),
            Card(
              color: Color(0xFFE6FFE7),
              child: ListTile(
                leading: Icon(CupertinoIcons.check_mark_circled_solid,
                  color: Color(0xFF2E7D32),
                  size: 35,
                ),
                title: Text('Use clean and safe drinking water.'),
              ),
            ),
            Card(
              color: Color(0xFFE6FFE7),
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.check_mark_circled_solid,
                  color: Color(0xFF2E7D32),
                  size: 35,
                ),
                title: Text('Maintain personal hygiene (bathing,oral care,etc).'),
              ),
            ),
            SizedBox(height: 8),
            Card(
              color: Color(0xFF9FEEA2),
              child: ListTile(
                leading: Icon(Icons.lightbulb,
                  color: Color(0xFF2E7D32),
                  size: 30,
                ),
                title: Text('Small habits make a big difference in your health!',
                  style: TextStyle(
                      color: Color(0xFF2E7D32)
                  ),),
              ),
            )
          ],
        ),)
      ),
    );
  }
}