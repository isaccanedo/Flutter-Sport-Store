import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sport_store/screens/welcome.dart';

void main() {
  runApp(SportStoreApp());
}

class SportStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sport Store',
      enableLog: true,
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primarySwatch: Colors.teal),
      home: Welcome(),
    );
  }
}
