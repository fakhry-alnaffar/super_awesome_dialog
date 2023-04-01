import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:super_awesome_dialog/super_awesome_dialog.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Super Awesome Dialog'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {
                AppDialog.instance.Info(
                  title: "title",
                  message: "msg",
                  btnOkOnPress: () {},
                );
              },
              child: const Text('Infoematiion Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                AppDialog.instance.Success(
                  title: "title",
                  message: "msg",
                  btnOkOnPress: () {},
                );
              },
              child: const Text('Success Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                AppDialog.instance.Warning(
                  title: "title",
                  message: "msg",
                  btnOkOnPress: () {},
                );
              },
              child: const Text('Warning Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                AppDialog.instance.Error(
                  title: "title",
                  message: "msg",
                  btnOkOnPress: () {},
                );
              },
              child: const Text('Error Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                AppDialog.instance.noHeader(
                  title: "title",
                  message: "msg",
                  btnOkOnPress: () {},
                );
              },
              child: const Text('NoHeader Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
