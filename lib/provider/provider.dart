/*
import 'package:flutter/material.dart';

class Favprovider extends ChangeNotifier {
  List <String> favimg=[];
  List <String> favdetails = [];
  List <String> get words => favdetails;
  List <String> get words2 => favimg;

  void selectedfav(String word,String word2) {
    final isExist = favdetails.contains(word);
    if (isExist) {
      favdetails.remove(word);
      favimg.remove(word2);
    } else {
      favdetails.add(word);
      favimg.add(word2);
    }
    notifyListeners();
  }

  bool isFav(String word) {
    final isFavt = favdetails.contains(word);
    return isFavt;
  }
}
*/
