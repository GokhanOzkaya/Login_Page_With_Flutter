import 'package:flutter/material.dart';

class FakeHomePage extends StatefulWidget {
  const FakeHomePage({super.key});

  @override
  State<FakeHomePage> createState() => _FakeHomePageState();
}

class _FakeHomePageState extends State<FakeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Column(
              children: [
                Text('Veriler'),
                GestureDetector(onTap: (){Navigator.pop(context);},child: Text('Geri DÖn')),
              ],
            ),
          )
        ],
      )),
    );
  }
}
