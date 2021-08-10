import 'package:flutter/material.dart';
import 'package:flutter_experiments/get_package/get_pckg_state_mngmnt.dart';
import 'get_pckg_home_page.dart';
import 'state_controller.dart';
import 'strings.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetStorage storage = GetStorage();
    Get.put(StateController(), tag: 'counter1');
    Get.put(StateController(), tag: 'counter2');

    return GetMaterialApp(
      translations: Strings(),
      locale: storage.read('locale') == null
          ? Get.deviceLocale
          : Locale(storage.read('locale')[0], storage.read('locale')[1]),
      title: 'Get Experiment',
      initialRoute: GetPackageHomePage.ROUTE_NAME,
      getPages: [
        GetPage(
          name: GetPackageHomePage.ROUTE_NAME,
          page: () => GetPackageHomePage(),
        ),
        GetPage(
          name: GetState.ROUTE_NAME,
          page: () => GetState(),
          transition: Transition.zoom,
        ),
      ],
    );
  }
}
