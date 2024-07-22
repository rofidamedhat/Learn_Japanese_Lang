// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:learn_jap/models/item_model.dart';
import 'package:learn_jap/widgets/phrase_list_tile.dart';

class PhrasePage extends StatelessWidget {
  const PhrasePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> phraseList = [
      ItemModel(
        sound: 'dont_forget_to_subscribe.wav',
        jName: 'Kōdoku suru koto o ',
        eName: 'dont forget to subscribe',
      ),
      ItemModel(
        sound: 'i_love_programming.wav',
        jName: 'Watashi wa puroguramingu',
        eName: 'i love  programming',
      ),
      ItemModel(
        sound: 'programming_is_easy.wav',
        jName: 'Puroguramingu wa kantandesu ',
        eName: 'programming is easy',
      ),
      ItemModel(
        sound: 'where_are_you_going.wav',
        jName: 'Doko ni iku no',
        eName: 'where are you going',
      ),
      ItemModel(
        sound: 'what_is_your_name.wav',
        jName: 'Namae wa nandesu ka',
        eName: 'what is your name ?',
      ),
      ItemModel(
        sound: 'i_love_anime.wav',
        jName: 'Watashi wa anime ga daisukidesu',
        eName: 'i love anime',
      ),
      ItemModel(
        sound: 'how_are_you_feeling.wav',
        jName: 'Go kibun wa ikagadesu ka',
        eName: 'how are you feeling?',
      ),
      ItemModel(
        sound: 'are_you_coming.wav',
        jName: 'Kimasu ka',
        eName: 'are you coming?',
      ),
      ItemModel(
        sound: 'yes_im_coming.wav',
        jName: 'Hai watashi wa kite imasu',
        eName: 'yes i am coming',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phraseList.length,
        itemBuilder: (context, index) => PhraseListTile(
          item: phraseList[index],
          soundType: 'phrases',
          color: const Color(0xff47A5CB),
        ),
      ),
    );
  }
}
