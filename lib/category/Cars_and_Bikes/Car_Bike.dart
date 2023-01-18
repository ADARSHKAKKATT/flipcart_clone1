import 'package:flipcart_clone/category/Cars_and_Bikes/veh_det/vehdetails.dart';
import 'package:flutter/material.dart';

class Vehcle extends StatefulWidget {
  const Vehcle({Key? key}) : super(key: key);

  @override
  State<Vehcle> createState() => _VehcleState();
}

class _VehcleState extends State<Vehcle> {
  @override
  Widget build(BuildContext context) {
    List veh = [
      "img_car/airfilter.jpg",
      "img_car/tyre.jpg",
      "img_car/chainloob.jpg",
      "img_car/engineoil.jpg",
    ];
    List det = ["Air Filter", "Tyre", "Chain Loob", "Engine Oil"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Cars and Bikes"),
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
              itemCount: veh.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Vhdetail()),
                  );

                },
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.greenAccent,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                          width: 20,
                        ),
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(veh[index]),
                        ),
                        Text(
                          det[index],
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
