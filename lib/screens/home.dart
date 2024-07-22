import 'package:flutter/material.dart';
import 'package:learn_jap/screens/color_page.dart';
import 'package:learn_jap/screens/fam_mem_page.dart';
import 'package:learn_jap/screens/number_page.dart';
import 'package:learn_jap/screens/phrases_page.dart';
import 'package:learn_jap/widgets/home_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Learn Japanese',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          HomeItem(
            color: const Color(0xffF99531),
            text: 'Numbers',
            ontap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NumberPage(),
                ),
              );
            },
          ),
          HomeItem(
            color: const Color(0xff528032),
            text: 'Family Members',
            ontap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FamMemPage(),
                ),
              );
            },
          ),
          HomeItem(
            color: const Color(0xff7D40A2),
            text: 'Colors',
            ontap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ColorsPage(),
                ),
              );
            },
          ),
          HomeItem(
            color: const Color(0xff47A5CB),
            text: 'Phrases',
            ontap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PhrasePage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
