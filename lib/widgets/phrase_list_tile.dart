import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn_jap/models/item_model.dart';

class PhraseListTile extends StatelessWidget {
  final ItemModel item;
  final Color color;
  final String soundType;
  const PhraseListTile({
    Key? key,
    required this.item,
    required this.color,
    required this.soundType,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 80,
        color: color,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.jName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    item.eName,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ],
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  AudioCache.instance =
                      AudioCache(prefix: 'assets/sounds/$soundType/');
                  final player = AudioPlayer();
                  player.play(AssetSource(item.sound));
                },
                icon: const Icon(
                  Icons.play_arrow,
                )),
          ],
        ),
      ),
    );
  }
}
