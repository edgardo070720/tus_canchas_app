import 'package:flutter/material.dart';

Widget buildCenteredTitle(String title) {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF5E17EB), // Color personalizado #5E17EB
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget buildTextField() {
  return Container(
    height: 23.0,
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: TextFormField(
      style: const TextStyle(fontSize: 14.0),
      decoration: const InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
      ),
    ),
  );
}