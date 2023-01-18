import 'package:flipcart_clone/cart/favorite.dart';
import 'package:flutter/material.dart';

class Vhdetail extends StatefulWidget {
  const Vhdetail({Key? key}) : super(key: key);

  @override
  State<Vhdetail> createState() => _VhdetailState();
}

class _VhdetailState extends State<Vhdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 400,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img_car/tyre11.jpg"))),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(height: 200,width: 400,
                  child: Text(
                    "Buy Car, SUV, Luxury Car and all kind of Passenger Vehicle Tyres Online at Lowest Price.",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    // style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Fav()),);
            },
              child: Container(
                height: 60,
                color: Colors.grey,
                child: Center(child: Text("Go to cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 60,
              color: Colors.yellow,
              child: Center(child: Text("Buy Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            ),
          ),
        ],
      ),
    );
  }
}
