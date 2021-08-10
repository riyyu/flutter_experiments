import 'package:flutter/material.dart';
import 'package:flutter_experiments/get_package/get_pckg_home_page.dart';
import 'package:flutter_experiments/get_package/strings.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Strings(),
      locale: Get.deviceLocale,
      title: 'Get Experiment',
      home: GetPackageHomePage(),
    );
  }
}
