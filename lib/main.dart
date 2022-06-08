import 'package:flutter/material.dart';
import 'package:kitchen/starters.dart';
import 'package:kitchen/sliders.dart';
import 'package:kitchen/street tacos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        title: Text("The Kitchen"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 305,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(10)),
              //color: Colors.pink,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Starters",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white24,
                    child: IconButton(
                        icon: Icon(
                          Icons.double_arrow,
                          color: Colors.black,
                        ),
                        iconSize: 20,
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Starters()));
                          });
                        }),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              width: 305,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(10)),
              //color: Colors.white30,

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Sliders",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white24,
                    child: IconButton(
                        icon: Icon(
                          Icons.double_arrow,
                          color: Colors.black,
                        ),
                        iconSize: 20,
                        color: Colors.white54,
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sliders()));
                          });
                        }),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              width: 305,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(10)),
              //color: Colors.pink,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Street Tacos",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white24,
                    child: IconButton(
                        icon: Icon(
                          Icons.double_arrow,
                          color: Colors.black,
                        ),
                        iconSize: 20,
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Street_Tacos()));
                          });
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}