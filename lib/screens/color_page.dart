import 'package:flutter/material.dart';
import 'package:learn_jap/models/item_model.dart';
import 'package:learn_jap/widgets/custom_list_tile.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> colorList = [
      ItemModel(
        image: 'assets/images/colors/color_black.png',
        jName: 'Kuro',
        eName: 'black',
        sound: 'black.wav',
      ),
      ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jName: 'Cha',
        eName: 'brown',
        sound: 'brown.wav',
      ),
      ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jName: 'tanōshoku',
        eName: 'dusty yellow',
        sound: 'dusty yellow.wav',
      ),
      ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jName: 'haiiro',
        eName: 'gray',
        sound: 'gray.wav',
      ),
      ItemModel(
        image: 'assets/images/colors/color_green.png',
        jName: 'Midori',
        eName: 'green',
        sound: 'green.wav',
      ),
      ItemModel(
        image: 'assets/images/colors/color_red.png',
        jName: 'Aka',
        eName: 'red',
        sound: 'red.wav',
      ),
      ItemModel(
        image: 'assets/images/colors/color_white.png',
        jName: 'Shiro',
        eName: 'white',
        sound: 'white.wav',
      ),
      ItemModel(
        sound: 'yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jName: 'Kiiro',
        eName: 'yellow',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) => CustomListTile(
          item: colorList[index],
          soundType: 'colors',
          color: const Color(0xff7D40A2),
        ),
      ),
    );
  }
}
