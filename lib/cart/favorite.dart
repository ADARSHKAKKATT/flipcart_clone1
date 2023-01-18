import 'package:flipcart_clone/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Fav extends StatefulWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    // final p = Provider.of<Favprovider>(context);
    // final words1 = p.words;
    return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
        ),
    );
  }
}
