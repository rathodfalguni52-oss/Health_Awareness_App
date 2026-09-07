import 'package:flutter/gestures.dart';
import 'package:health_awareness_app/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF4CAF50),
            Color(0xFFA5D6A7),
            Color(0xFFF1F8E9)
          ],
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight
          ),
        ),
        child: Center(
          child: Container(
            width: 250,
            height: 450,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius: BorderRadiusGeometry.all(
                Radius.circular(25)
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  spreadRadius: 1,
                  offset: Offset(0, 8),
                  color: Colors.black26
                )
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.medical_information,size: 60,color: Color(0xFF2E7D32)),
                  SizedBox(height: 15),
                  Text("Welcome Back!",style: TextStyle(
                    fontSize: 20,
                  ),),
                  SizedBox(height: 30),
                  Container(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        focusedBorder:  OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF4CAF50)
                          ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        enabledBorder:OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey
                          ),
                          borderRadius: BorderRadius.circular(15)
                        ) ,
                        prefixIcon: Icon(Icons.email,color: Color(0xFF4CAF50),),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 200,
                    height: 50,
                    child:
                    TextField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF4CAF50),
                          ),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        prefixIcon: Icon(Icons.lock,color: Color(0xFF4CAF50),),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Forget Password",style:TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                  ),),
                  SizedBox(height: 1),
                  Container
                    (
                    margin: const EdgeInsetsGeometry.all(16),
                    width: double.infinity,
                    child:
                    ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2E7D32),
                      iconSize: 50,

                    ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()
                          )
                          );
                        },
                        child: Text("Login",style: TextStyle(
                            color: Colors.white
                        ),)
                    ) ,
                  ),
                  SizedBox(height: 40),
                  RichText(text: TextSpan(
                    text: "Don't have account? ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14
                    ),
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: Color(0xFF4CAF50),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                        ),

                        recognizer: TapGestureRecognizer()..onTap=(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()
                          )
                          );
                        },
                      )
                  ],
                  )
                  )
                ],
              ),
            ),
          )
        ),
      )
    );
  }
}