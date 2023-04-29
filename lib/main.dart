import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                            padding: const EdgeInsets.all(16.0),
                            child: Expanded(
                              child: Text("1",
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
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
                            padding: const EdgeInsets.all(16.0),
                            child: Expanded(
                              child: Text("1",
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Expanded(
                              child: Text("=",
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Expanded(
                              child: Text("?",
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple),
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
                      child: TextButton(onPressed: (){}, child:
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/3.png",),
                      ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 100,
                      child: TextButton(onPressed: (){}, child:
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/3.png",),
                      ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 210,
                      child: TextButton(onPressed: (){}, child:
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/3.png",),
                      ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 280,
                      child: TextButton(onPressed: (){}, child:
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("assets/images/3.png",),
                      ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}
