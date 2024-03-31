import 'package:flutter/material.dart';
import 'package:toku_app/components/const.dart';
import 'package:toku_app/models/catgory.dart';

class Listdata {
  Listdata(BuildContext context);
  static List<Catgorymod> catgroy = [
    Catgorymod(
      title: "Nambers",
      bacColor: color.yallwo,
    ),
    Catgorymod(
      title: "Family Members",
      bacColor: color.green,
    ),
    Catgorymod(
      title: "Colors",
      bacColor: color.purple,
    ),
    Catgorymod(
      title: "Phrases",
      bacColor: color.blue,
    ),
  ];
}
