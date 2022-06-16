import 'package:flutter/material.dart';

import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widget/title.dart';

const imageURL = "https://flxt.tmsimg.com/assets/p185846_b_v8_ad.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SsearchTextTitle(title: 'Movies & TV'),
        kheigth,
        Expanded(
            child: GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1 / 1.4,
          shrinkWrap: true,
          crossAxisCount: 3,
          children: List.generate(20, (index) => MianCard()),
        )),
      ],
    );
  }
}

class MianCard extends StatelessWidget {
  const MianCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: const DecorationImage(
              image: NetworkImage(imageURL), fit: BoxFit.cover)),
    );
  }
}
