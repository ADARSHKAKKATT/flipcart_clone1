import 'package:flipcart_clone/accounts/login_page.dart';
import 'package:flipcart_clone/cart/favorite.dart';
import 'package:flipcart_clone/category/Cars_and_Bikes/Car_Bike.dart';
import 'package:flipcart_clone/category/beauty/beautyy.dart';
import 'package:flipcart_clone/category/category.dart';
import 'package:flipcart_clone/category/fashion/fashn.dart';
import 'package:flipcart_clone/fixed.dart';
import 'package:flipcart_clone/home/home.dart';
import 'package:flipcart_clone/provider/provider.dart';
import 'package:flipcart_clone/splsh.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /*ChangeNotifierProvider(create: (context)=>Favprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Fix(),
      ),
    );*/

      MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
