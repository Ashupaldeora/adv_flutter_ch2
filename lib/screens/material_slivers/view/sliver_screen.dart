import 'package:adv_flutter_ch2/screens/material_slivers/models/sliver_colors_model.dart';
import 'package:flutter/material.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.black,

            // title: Text("Sliver App Bar"),
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver App Bar"),
              background: Image.network(
                  fit: BoxFit.cover,
                  "https://st4.depositphotos.com/1466240/40938/i/450/depositphotos_409388210-stock-photo-water-droplets-black-background-water.jpg"),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: sliverColors.length,
            (context, index) => Container(
              margin: EdgeInsets.all(10),
              height: 100,
              color: sliverColors[index].colors,
            ),
          ))
        ],
      ),
    );
  }
}
