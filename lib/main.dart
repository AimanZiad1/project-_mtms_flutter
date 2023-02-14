import 'package:project_management/app/features/dashboard/views/screens/page_one.dart';
import 'package:project_management/app/features/dashboard/views/screens/page_tow.dart';

import 'app/config/routes/app_pages.dart';
import 'app/config/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'sss',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.basic,
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
    );
  }
}
