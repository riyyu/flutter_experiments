import 'package:flutter/material.dart';
import 'instagram_home_page.dart';

void main() {
  runApp(InstagramMain());
}

class InstagramMain extends StatelessWidget {
  const InstagramMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      home: InstagramHomePage(),
    );
  }
}
