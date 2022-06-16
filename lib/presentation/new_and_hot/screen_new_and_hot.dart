import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../widgets/videowidget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              backgroundColor: Colors.black,
              title: const Text(
                "New & Hot",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                ),
                kwidth,
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.blue,
                )
              ],
              bottom: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.black,
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  tabs: const [
                    Tab(
                      text: '🍿 Comming Soon',
                    ),
                    Tab(
                      text: "👀 Everyone's Watching",
                    )
                  ]),
            )),
        body: TabBarView(
          children: [
            _buildcommingsoon(context),
            _buildeveryone(),
          ],
        ),
      ),
    );
  }
}

Widget _buildcommingsoon(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) =>
          ComingSoonWidget(size: size));
}

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 400,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'FEB',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "12",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidegt(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tall Girl2',
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 10),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.add_alert_sharp,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                      const Text(
                        'Remind Me',
                      ),
                      kwidth,
                      const Icon(
                        Icons.info,
                        color: Colors.white,
                        size: 30,
                      ),
                      // const Text(
                      //   'Info',
                      // )
                    ],
                  )
                ],
              ),
              kheigth,
              const Text('Coming on friday'),
              kheigth,
              const Text(
                'Tall Girl 2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              kheigth,
              const Text(
                'Landing on school is a musical  comes true for \n jjoli untill the pleasure sends her confidece \n -- and her relationship  \n-- into tall spin',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildeveryone() {
  return ListView.builder(
    itemBuilder: (BuildContext context, index) => const EveryOneWatch(),
  );
}

class EveryOneWatch extends StatelessWidget {
  const EveryOneWatch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheigth,
        const Text(
          'Friends 2',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kheigth,
        const Text(
          "This hit sitcom follows me merry missadventure of six \n 20 - something pals as they native pitfall \n of work , life and love in 1980",
          style: TextStyle(color: Colors.grey),
        ),
        kheigth,
        const VideoWidegt(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(
                Icons.share,
                color: Colors.white,
                size: 30,
              ),
              kwidth,
              Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
              kwidth,
              Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
              kwidth,
            ],
          ),
        )
      ],
    );
  }
}
