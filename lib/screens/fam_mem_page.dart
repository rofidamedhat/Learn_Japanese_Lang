import 'package:flutter/material.dart';
import 'package:learn_jap/models/item_model.dart';
import 'package:learn_jap/widgets/custom_list_tile.dart';

class FamMemPage extends StatelessWidget {
  const FamMemPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> famMemList = [
      ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jName: 'Chichi',
        eName: 'father',
        sound: 'father.wav',
      ),
      ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        jName: 'Haha',
        eName: 'Mother',
        sound: 'mother.wav',
      ),
      ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        jName: 'Musume',
        eName: 'daughter',
        sound: 'daughter.wav',
      ),
      ItemModel(
        image: 'assets/images/family_members/family_son.png',
        jName: 'Musuko',
        eName: 'son',
        sound: 'son.wav',
      ),
      ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jName: 'ojiisan',
        eName: 'Grandfather',
        sound: 'grand father.wav',
      ),
      ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jName: 'obaasan',
        eName: 'Grandmother',
        sound: 'grand mother.wav',
      ),
      ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jName: 'Ani',
        eName: 'old brother',
        sound: 'older bother.wav',
      ),
      ItemModel(
        sound: 'older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jName: 'Ane',
        eName: 'old sister',
      ),
      ItemModel(
        sound: 'younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jName: 'Otooto',
        eName: 'younger brother',
      ),
      ItemModel(
        sound: 'younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jName: 'Imooto',
        eName: 'younger sister',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Member',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: famMemList.length,
        itemBuilder: (context, index) => CustomListTile(
          item: famMemList[index],
          soundType: 'family_members',
          color:  const Color(0xff528032),
        ),
      ),
    );
  }
}
