import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/infrastucture/api.dart';
import 'package:netflix/presentation/home/number_card.dart';

import 'package:netflix/widgets/main_title_card.dart';
import 'package:netflix/widgets/text_ui.dart';

import '../../model/datamodel.dart/datamodel.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(children: [
              FutureBuilder(
                  future: MovieDb().getAllMovies(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<DataModel>> allmovies) {
                    return ListView(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 600,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://image.tmdb.org/t/p/original/${allmovies.data![0].posterPath}'))),
                            ),
                            Positioned(
                              bottom: 15,
                              right: 0,
                              left: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: const [
                                        Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'My List',
                                          style: TextStyle(fontSize: 22),
                                        )
                                      ],
                                    ),
                                    _icon_button(),
                                    Column(
                                      children: const [
                                        Icon(
                                          Icons.info_outline,
                                          size: 25,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'Info',
                                          style: TextStyle(fontSize: 22),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const MainTitlecardx(
                            title: "Realesed in the passed year"),
                        const MainTitlecardx(
                          title: "Trending Now",
                        ),
                        Column(
                          children: [
                            const MainTile(
                                title: "Top 10 TV shows in India today"),
                            LimitedBox(
                              maxHeight: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: List.generate(
                                  10,
                                  (index) => NumberCard(index: index),
                                ),
                              ),
                            )
                          ],
                        ),
                        const MainTitlecardx(title: " Tense Dramas"),
                        const MainTitlecardx(title: "South Indian cinema"),
                      ],
                    );
                  }),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 80,
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                'https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png',
                                width: 60,
                                height: 60,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                color: Colors.white,
                              ),
                              kwidth,
                              Container(
                                width: 40,
                                height: 40,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                'TV Shows',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Movies',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Categories',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  : kheigth,
            ]),
          );
        },
      ),
    );
  }

  TextButton _icon_button() {
    return TextButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          size: 25,
          color: Colors.black,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "play",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ));
  }
}
