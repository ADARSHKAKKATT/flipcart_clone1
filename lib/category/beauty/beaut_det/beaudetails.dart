import 'package:flipcart_clone/cart/favorite.dart';
import 'package:flutter/material.dart';

class Btydetail extends StatefulWidget {
  const Btydetail({Key? key}) : super(key: key);

  @override
  State<Btydetail> createState() => _BtydetailState();
}

class _BtydetailState extends State<Btydetail> {
  @override
  Widget build(BuildContext context) {
    List btph = [
      "img_beauty/blush.jpg",
      "img_beauty/compact.jpg",
      "img_beauty/contoursticks.jpg",
      "img_beauty/eyeliner.jpg",
      "img_beauty/foundation.jpg"
    ];
    List btdet = [
      "ADDIDAS ",
      "PUMA",
      "NIKE",
      "BEEROCK",
      "AIR",
    ];
    // final p = Provider.of<Favprovider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: btdet.length,
                itemBuilder: (BuildContext context, int index){
                  return Column(
                    children: [

                      Container(
                        height: 100,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(btph[index]))),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Container(
                            height: double.maxFinite,
                            width: double.maxFinite,
                            child: Text(btdet[index],
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              // style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
            }),
          ],
        ),
      ),

      /*SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              Container(
                height: 400,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img_beauty/blush.jpg"))),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 200,
                  width: 400,
                  child: Text(
                    "Blush is one product that gives you an instant healthy and radiant glow. A blush highlights your cheekbones and makes them stand out when they are buried under layers of makeup.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    // style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),*/
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Fav()),
                );
              },
              child: Container(
                height: 60,
                color: Colors.grey,
                child: Center(
                    child: Text(
                  "Go to cart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 60,
              color: Colors.yellow,
              child: Center(
                  child: Text(
                "Buy Now",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
