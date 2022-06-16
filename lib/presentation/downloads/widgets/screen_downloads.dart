import 'dart:math';

import 'package:flutter/material.dart';

import 'package:netflix/presentation/widgets/app_bar_widgets.dart';

import '../../../core/constants.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads ",
          )),
      body: ListView(
        children: [
          const _SamrtDownloads(),
          const Text(
            'Indroducing Downloads for you',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          kheigth,
          const Text(
            'We will download personalised selection of \n movies and shows for you,so there is \n always something watch on your \n device.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          kheigth,
          Section2(),
          const Section3(),
        ],
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  final List imagelist = [
    'https://flxt.tmsimg.com/assets/p12991665_b_v13_am.jpg',
    'https://flxt.tmsimg.com/assets/p185846_b_v8_ad.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmawzywsqo8t42XCDJPIy8jShR3OaNGu5B2g&usqp=CAU',
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: size.width * 0.3,
              ),
              DownloadsImageWidgets(
                imagelist: imagelist[0],
                margin: EdgeInsets.only(left: 130, bottom: 50, top: 50),
                angle: 20,
                size: Size(size.width * 0.4, size.width * 0.58),
              ),
              DownloadsImageWidgets(
                imagelist: imagelist[1],
                radius: 20,
                margin: EdgeInsets.only(right: 130, bottom: 50, top: 50),
                angle: -20,
                size: Size(size.width * 0.4, size.width * 0.58),
              ),
              DownloadsImageWidgets(
                imagelist: imagelist[2],
                margin: EdgeInsets.only(bottom: 10),
                size: Size(size.width * 0.45, size.width * 0.64),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.blue[900],
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheigth,
        MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.white,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See What you can download',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _SamrtDownloads extends StatelessWidget {
  const _SamrtDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: const [
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          Text('Smart downloads'),
        ],
      ),
    );
  }
}

class DownloadsImageWidgets extends StatelessWidget {
  const DownloadsImageWidgets(
      {Key? key,
      required this.imagelist,
      this.angle = 0,
      required this.margin,
      required this.size,
      this.radius = 10})
      : super(key: key);

  final String imagelist;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          margin: margin,
          width: size.width,
          height: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
                image: NetworkImage(imagelist), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
