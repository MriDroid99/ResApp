import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:res/body_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home Screen'),
          ),
          drawer: const Drawer(),
          body: const BodyWidget(),
        );
      },
      desktop: (_) {
        return Scaffold(
          appBar: AppBar(
            leading: const FlutterLogo(),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          body: const BodyWidget(),
        );
      },
    );
  }
}
