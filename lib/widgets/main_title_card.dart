import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/widgets/text_ui.dart';

class MainTitlecardx extends StatelessWidget {
  final String title;
  const MainTitlecardx({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainTile(title: title),
        kheigth,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => MainCard(index: index)),
          ),
        )
      ],
    );
  }
}
