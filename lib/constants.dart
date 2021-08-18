import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  fillColor: Color(0xfffaf9f7),
  filled: true,
  border: OutlineInputBorder(
      borderSide:
      BorderSide(color: Color(0xfffaf9f7))),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Color(0xfffaf9f7)),
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  ),
);
const kFormTitle = TextStyle(fontSize: 14.0, color: Colors.black54);
const kFormValue = TextStyle(
    fontSize: 16.0, fontWeight: FontWeight.w700, color: Colors.black87);