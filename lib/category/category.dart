import 'package:flipcart_clone/category/Cars_and_Bikes/Car_Bike.dart';
import 'package:flipcart_clone/category/beauty/beautyy.dart';
import 'package:flipcart_clone/category/fashion/fashn.dart';
import 'package:flutter/material.dart';

class Categ extends StatefulWidget {
  const Categ({Key? key}) : super(key: key);

  @override
  State<Categ> createState() => _CategState();
}

class _CategState extends State<Categ> {
  @override
  Widget build(BuildContext context) {
    List l1 = [
      "img1/beauti.jpg",
      "img1/carsandbikes.jpg",
      "img1/fasion.jpg",
      "img1/electronics.jpg",
      "img1/gym.jpg",
      "img1/homeandfurni.jpg",
      "img1/phone.jpg",
      "img1/sports.jpg",
      "img1/toys and baby.jpg",
      "img1/tv.jpg"
    ];
    List detail1 = [
      "Beauty",
      "Cars and Bikes",
      "Fashion",
      "Electronics",
      "Gym",
      "Furniture",
      "Phones",
      "Sports",
      "Toys and Baby",
      "TV",
    ];
    List aa=[
      Beauti(),
      Vehcle(),
      Fashion(),

    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Category"
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                 /* gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200),*/
                  shrinkWrap: true,
                  itemCount: l1.length,
                  itemBuilder: (BuildContext context, int index){
                    return InkWell(onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context)=>aa[index]),
                      );
                    },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(l1[index]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  detail1[index],
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
