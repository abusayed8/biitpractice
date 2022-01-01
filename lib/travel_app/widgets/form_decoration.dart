import 'package:flutter/material.dart';

const FormDecoration = InputDecoration(
  labelText: 'First Name',
  labelStyle: TextStyle(
      ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
//color: Theme.of(context).primaryColor,
      width: 3,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
//color: Theme.of(context).primaryColor,
      width: 3,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
      width: 3,
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
    color: Colors.red,
    width: 3,
  )),
  fillColor: Colors.white,
  filled: true,
);
