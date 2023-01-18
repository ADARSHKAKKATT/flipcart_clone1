import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Flipcart extends StatelessWidget {
  const Flipcart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List l = [
      "img/beauti.jpg",
      "img/electronics.jpg",
      "img/fasion.jpg",
      "img/gym.jpg",
      "img/homeandfurni.jpg",
      "img/phone.jpg",
      "img/tv.jpg"
    ];
    List detail = [
      "Beauty",
      "Electronics",
      "Fashion",
      "Gym",
      "Furniture",
      "Mobile",
      "Television"
    ];
    List promo = [
      "img_Carousel/offer_ph.jpg",
      "img_Carousel/slider3.jpg",
      "img_Carousel/slider1.jpg",
      "img_Carousel/slider2.jpg"
    ];
    List offer = [
      "Up to 70% offer",
      "Up to 40% offer",
      "Up to 60% offer",
      "Up to 50% offer",
      "Up to 30% offer",
      "Up to 70% offer",
      "Up to 65% offer"
    ];
    /*List<Model> demo=[
      Model(i: "img/beauti.jpg",d: "Beauty"),
      Model(i: "img/electronics.jpg",d: "Electronics"),
      Model(i: "img/fasion.jpg",d: "Fashion"),
      Model(i: "img/gym.jpg",d: "Gym"),
      Model(i: "img/homeandfurni.jpg",d: "Furniture"),
      Model(i: "img/phone.jpg",d: "Mobile"),
      Model(i: "img/tv.jpg",d: "Television"),
    ];*/
    // final p = Provider.of<Favprovider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Flipkart",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'ConcertOne',
                  fontWeight: FontWeight.w800),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic),
                    ),
                  ),
                ),
              ),
            ),
            /*FloatingActionButton.extended(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Fav()));
              },
              label: Icon(Icons.shopping_cart_outlined),
            ),*/
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 10,
              ),
              CarouselSlider(
                  items: promo
                      .map((item) => Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(item), fit: BoxFit.fill)),
                          ))
                      .toList(),
                  options: CarouselOptions(autoPlay: true, height: 150)),
              SizedBox(
                height: 15,
              ),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    maxCrossAxisExtent: 200),
                itemCount: l.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // color: Color(0xffE1F1FA),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(l[index]),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          detail[index],
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          offer[index],
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 4,
                width: double.maxFinite,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img_logo/Addd.jpg"),
                        fit: BoxFit.fill)),
              ),
              /*IconButton(onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("hjdcgjhds")));
              })*/
            ],
          ),
        ),
      ),
    );
  }
}
