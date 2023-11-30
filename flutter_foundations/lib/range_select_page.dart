import 'package:flutter/material.dart';

class RangeSelectPage extends StatefulWidget {
  const RangeSelectPage({super.key});

  @override
  State<RangeSelectPage> createState() => _RangeSelectPageState();
}

class _RangeSelectPageState extends State<RangeSelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Range'),
      ),
      body: Form(
        child: Container(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {},
      ),
    );
  }
}
