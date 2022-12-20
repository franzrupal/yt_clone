import 'package:flutter/material.dart';

class CategoryAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          bottom: 10,
        ),
        child: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: .7,
          child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 91, 91, 91),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Icon(Icons.explore_outlined)),
        ),
      ),
      actions: [],
    );
  }
}
