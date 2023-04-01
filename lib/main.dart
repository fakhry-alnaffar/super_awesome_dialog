import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:super_awesome_dialog/super_awesome_dialog.dart';

import 'app/routes/app_pages.dart';

void main() {
  AppDialog.instance;

  runApp(
    GetMaterialApp(
      title: "super Awesome Dialog",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
