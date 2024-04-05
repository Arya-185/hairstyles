import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HGrid extends StatefulWidget {
  const HGrid({super.key});

  @override
  State<HGrid> createState() => _HGridState();
}

class _HGridState extends State<HGrid> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Expanded(
        child: MasonryGridView.builder(
      gridDelegate:
          SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(2),
          height: 100,
          color: Colors.black,
        );
      },
    ));
  }
}
