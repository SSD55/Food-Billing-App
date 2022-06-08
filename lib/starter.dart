import 'package:flutter/material.dart';
double quantity_lettuce = 1;
double price_lettuce=150;
double quantity_fried = 1;
double price_fried = 200;
double quantity_pretzels = 1;
double price_pretzels= 250;
class Starters extends StatefulWidget {
  const Starters({Key? key}) : super(key: key);

  @override
  State<Starters> createState() => _StartersState();
}

class _StartersState extends State<Starters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Starters"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 305,
            color: Colors.pink,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Lettuce Wraps",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        iconSize: 30,
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            quantity_lettuce += 1;
                          });
                        },
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                      child: IconButton(
                        icon: Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                        iconSize: 30,
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            quantity_lettuce -= 1;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            width: 305,
            color: Colors.pink,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Fried Cheese",
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 70,
            width: 305,
            color: Colors.pink,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Pretzels",
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}