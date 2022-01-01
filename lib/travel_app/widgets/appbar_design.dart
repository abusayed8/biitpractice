import 'package:flutter/material.dart';

PreferredSizeWidget AppBarDesign(String appBarName) {
  return AppBar(
    title: Text(appBarName),
    backgroundColor: Colors.green,
    centerTitle: true,
  );
}

