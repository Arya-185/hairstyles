import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hairstyles/controller/fetch_data_controller.dart';
import 'package:provider/provider.dart';

class HGrid extends StatefulWidget {
  const HGrid({super.key});

  @override
  State<HGrid> createState() => _HGridState();
}

class _HGridState extends State<HGrid> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<FetchDataController>(context, listen: false);
    });  }

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    final getData = Provider.of<FetchDataController>(context);

    return Expanded(
        child: MasonryGridView.builder(
      gridDelegate:
          SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        if(getData.data==null){
          return Container();
        }
        else{
          return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network("${getData.data["data"][index]["img"]}"),
        );
        }
      },
    ));
  }
}
