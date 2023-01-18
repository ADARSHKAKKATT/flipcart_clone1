import 'package:flutter/material.dart';

class Fashion extends StatefulWidget {
  const Fashion({Key? key}) : super(key: key);

  @override
  State<Fashion> createState() => _FashionState();
}

class _FashionState extends State<Fashion> {
  @override
  Widget build(BuildContext context) {
    List fasion = [
      "img_fashion/churidar.jpg",
      "img_fashion/jeans_men.jpg",
      "img_fashion/boxer.jpg",
      "img_fashion/shirt_men.jpg",
      "img_fashion/t shirt.jpg"
    ];
    List det = [
      "Churidar",
      "Jeans for men",
      "Boxer",
      "Shirt for men",
      "T Shirt"
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Fashion"),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemCount: fasion.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            width: 100,
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  width: 20,
                  height: 10,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(fasion[index]),
                ),
                Text(
                  det[index],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
