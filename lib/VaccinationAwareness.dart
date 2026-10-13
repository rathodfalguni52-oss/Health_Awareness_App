import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Vaccinationawareness extends StatefulWidget
{
  @override
  State<Vaccinationawareness> createState()=>_VaccinationAwarenessState();
}
class _VaccinationAwarenessState extends State<Vaccinationawareness>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(onPressed: ()=>Navigator.pop(context),
            icon: Icon(CupertinoIcons.back,
            color: Colors.white,)
        ),
        title: Text('Vaccination Awareness',
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsetsGeometry.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 200,
              ),
              Text('Why it Matters',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 5),
              Text('Vaccines protect you from serious diseases,build your immunity,and help create a healthier community',
              style: TextStyle(
                fontSize: 15
              ),
              softWrap: true,
              ),
              SizedBox(height: 20),
              Text('Key Tips',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 5),
              infoCards('Keep your vaccine schedule up to date.'),
              infoCards('Be aware of recommended vaccines for all age groups.'),
              infoCards('Follow your doctor advice and get vaccinated.'),
              infoCards('Encourage your family and friends to get vaccinated.'),
              SizedBox(height: 8,),
              Card(
                color: Color(0xCBF5FCFC),
                child: ListTile(
                  leading:
                  Icon(CupertinoIcons.checkmark_shield_fill,
                      size: 30,
                      color: Colors.blue),
                  title: Text('Vaccine not only protect you but also those around you.',
                  style: TextStyle(
                    color: Colors.blue
                  ),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget infoCards(String text)
  {
    return Card(
      color: Color(0xCBF5FCFC),
      child: ListTile(
        leading: Icon(CupertinoIcons.check_mark_circled_solid,
          color: Colors.blue,
        ),
        title: Text(text),
      ),
    );
  }
}