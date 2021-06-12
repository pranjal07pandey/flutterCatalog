import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text('welcome to $days days of flutter tutorial'),
        ),
      ),
      drawer: Mydrawer(

      ),
    );
  }
}
