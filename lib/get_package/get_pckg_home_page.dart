import 'package:flutter/material.dart';
import 'get_pckg_state_mngmnt.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetPackageHomePage extends StatelessWidget {
  static const ROUTE_NAME = '/';
  const GetPackageHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetStorage storage = GetStorage();
    // RxBool _isDark = false.obs;

    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                List localeList = ['en', 'US'];
                Locale locale = Locale(localeList[0], localeList[1]);

                Get.updateLocale(locale);
                storage.write('locale', localeList);
                Get.defaultDialog(
                  content: Text('Chaange to English'),
                );
              },
              child: Text('English'),
            ),
            ElevatedButton(
              onPressed: () {
                List localeList = ['id', 'ID'];
                Locale locale = Locale(localeList[0], localeList[1]);

                Get.updateLocale(locale);
                storage.write('locale', localeList);
                Get.snackbar(
                  'Success',
                  'Change to bahasa',
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
              child: Text('Bahasa'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(GetState.ROUTE_NAME),
              child: Text('Go To State Example'),
            ),
            ElevatedButton(
              onPressed: () => Get.changeTheme(ThemeData.dark()),
              child: Text('Change Dark Theme'),
            ),
            ElevatedButton(
              onPressed: () => Get.changeTheme(ThemeData.light()),
              child: Text('Change Light Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
