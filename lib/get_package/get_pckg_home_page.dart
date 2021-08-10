import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetPackageHomePage extends StatelessWidget {
  const GetPackageHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Get.updateLocale(Locale('en', 'US')),
              child: Text('English'),
            ),
            ElevatedButton(
              onPressed: () => Get.updateLocale(Locale('id', 'ID')),
              child: Text('Bahasa'),
            ),
          ],
        ),
      ),
    );
  }
}
