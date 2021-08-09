import 'package:flutter/material.dart';

class NewNavigatorHomePage extends StatelessWidget {
  const NewNavigatorHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Go To Second Page'),
        ),
      ),
    );
  }
}
