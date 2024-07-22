import 'package:flutter/material.dart';
import 'package:learn_jap/models/item_model.dart';
import 'package:learn_jap/widgets/custom_list_tile.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> numberList = [
      ItemModel(
        image: 'assets/images/numbers/number_one.png',
        jName: 'ichi',
        eName: 'One',
        sound: 'number_one_sound.mp3',
      ),
      ItemModel(
        image: 'assets/images/numbers/number_two.png',
        jName: 'ni',
        eName: 'Two',
        sound: 'number_two_sound.mp3',
      ),
      ItemModel(
        image: 'assets/images/numbers/number_three.png',
        jName: 'san',
        eName: 'Three',
        sound: 'number_three_sound.mp3',
      ),
      ItemModel(
        image: 'assets/images/numbers/number_four.png',
        jName: 'shi',
        eName: 'Four',
        sound: 'number_four_sound.mp3',
      ),
      ItemModel(
        image: 'assets/images/numbers/number_five.png',
        jName: 'go',
        eName: 'Five',
        sound: 'number_five_sound.mp3',
      ),
      ItemModel(
        image: 'assets/images/numbers/number_six.png',
        jName: 'roku',
        eName: 'Six',
        sound: 'number_six_sound.mp3',
      ),
      ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        jName: 'shichi',
        eName: 'Seven',
        sound: 'number_seven_sound.mp3',
      ),
      ItemModel(
        sound: 'number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jName: 'hachi',
        eName: 'Eight',
      ),
      ItemModel(
        sound: 'number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jName: 'ku',
        eName: 'Nine',
      ),
      ItemModel(
        sound: 'number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jName: 'jū',
        eName: 'Ten',
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (context, index) => CustomListTile(
          item: numberList[index],
          soundType: 'numbers',
          color: const Color(0xffD88531),
        ),
      ),
    );
  }
}
