import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: getValueForScreenType(
            context: context,
            mobile: 2,
            desktop: 5,
          ),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 250,
        ),
        itemBuilder: (_, i) => const GridTile(
          child: FlutterLogo(
            size: 30,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            title: Center(child: Text('Flutter Logo')),
          ),
        ),
        itemCount: 15,
      ),
    );
  }
}
