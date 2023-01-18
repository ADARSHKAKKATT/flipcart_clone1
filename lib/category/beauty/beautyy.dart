import 'package:flipcart_clone/category/beauty/beaut_det/beaudetails.dart';
import 'package:flutter/material.dart';

class Beauti extends StatefulWidget {
  const Beauti({Key? key}) : super(key: key);

  @override
  State<Beauti> createState() => _BeautiState();
}

class _BeautiState extends State<Beauti> {
  @override
  Widget build(BuildContext context) {
    List beauty = [
      "img_beauty/blush.jpg",
      "img_beauty/compact.jpg",
      "img_beauty/contoursticks.jpg",
      "img_beauty/eyeliner.jpg",
      "img_beauty/foundation.jpg"
    ];
    List det = ["Blush", "Compact", "Contour Sticks", "Eyeliner", "Foundation"];
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Beauty Items"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              shrinkWrap: true,
              itemCount: beauty.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: InkWell(onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Btydetail()),
                    );

                  },
                    child: Container(
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
                            backgroundImage: AssetImage(beauty[index]),
                          ),
                          Text(
                            det[index],
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
