import 'package:flipcart_clone/category/category.dart';
import 'package:flipcart_clone/cart/favorite.dart';
import 'package:flipcart_clone/home/home.dart';
import 'package:flipcart_clone/accounts/login_page.dart';
import 'package:flipcart_clone/notification/notificn.dart';
import 'package:flutter/material.dart';
// import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Fix extends StatefulWidget {
  const Fix({Key? key}) : super(key: key);

  @override
  State<Fix> createState() => _FixState();
}

class _FixState extends State<Fix> {
  int nxtval = 0;
  void bottomnavigation(int index) {
    setState(() {
      nxtval = index;
    });
  }

  final List<Widget> pages = [
    Flipcart(),
    Categ(),
    Login(),
    Notifi(),
    Fav(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[nxtval],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: nxtval,
        onTap: bottomnavigation,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_view,
              color: Colors.black,
              size: 30,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              color: Colors.black,
              size: 30,
            ),
            label: 'Accounts',
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.notifications,
            color: Colors.black,
            size: 30,
          ),
          label: 'Notification'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
