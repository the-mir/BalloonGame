import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int balloon_1=1,balloon_2=2,balloon_3=3,balloon_4=4,number_1=1,number_2=2,b_sum=0,cl=0,sel_1=0,sel_2=0,sel_count=2;
  String result='?';
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Practice App',
      home: Scaffold(
          body:Container(
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover,
                )
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80,right: 20,left: 20),
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Expanded(
                              child: Text("$number_1",
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Expanded(
                              child: Text("+",
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Expanded(
                              child: Text("$number_2",
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amberAccent),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Expanded(
                              child: Text("=",
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Expanded(
                              child: Text("$result",
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 450,
                    ),
                    Positioned(
                      top: 100,
                      left: 20,
                      child: TextButton(onPressed: (){
                        setState(() {
                          if(sel_count==2)
                          {
                            sel_1=balloon_1;
                            sel_count--;
                          }
                          else{
                            sel_2=balloon_1;
                          }
                        });
                      }, child:
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/$balloon_1.png",),
                      ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 100,
                      child: TextButton(onPressed: (){
                        setState(() {
                          if(sel_count==2)
                          {
                            sel_1=balloon_2;
                            sel_count--;
                          }
                          else{
                            sel_2=balloon_2;
                          }
                        });
                      }, child:
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/$balloon_2.png",),
                      ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 210,
                      child: TextButton(onPressed: (){
                        setState(() {
                          if(sel_count==2)
                          {
                            sel_1=balloon_3;
                            sel_count--;
                          }
                          else{
                            sel_2=balloon_3;
                          }
                        });
                      }, child:
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/$balloon_3.png",),
                      ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 280,
                      child: TextButton(onPressed: (){
                        setState(() {
                          if(sel_count==2)
                            {
                              sel_1=balloon_4;
                              sel_count--;
                            }
                          else{
                            sel_2=balloon_4;
                          }
                        });
                      }, child:
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/$balloon_4.png",),
                      ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.0,),
                ElevatedButton(onPressed: (){
                  b_sum=sel_1+sel_2;
                  print(sel_1);
                  print(sel_2);
                  print(b_sum);
                  result= b_sum.toString();
                }, child: Text("Select Done",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)),
                ElevatedButton(onPressed: (){
                  setState(() {
                    balloon_1=Random().nextInt(9)+1;
                    balloon_2=Random().nextInt(9)+1;
                    balloon_3=Random().nextInt(9)+1;
                    balloon_4=Random().nextInt(9)+1;
                    cl++;
                    if(cl==1)
                      {
                        number_1=balloon_2;
                        number_2=balloon_3;
                      }
                    else if(cl==2)
                      {
                        number_1=balloon_1;
                        number_2=balloon_4;
                      }
                    else if(cl==3)
                      {
                        number_1=balloon_1;
                        number_2=balloon_3;
                      }
                    else if(cl==4)
                      {
                        number_1=balloon_2;
                        number_2=balloon_4;
                      }
                    if(cl==4)
                      {
                        cl=0;
                      }
                    b_sum=0;
                    result='?';
                  });
                }, child: Text("Start",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)),

              ],
            ),
          )
      ),
    );
  }
}


