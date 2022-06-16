import 'package:flutter/material.dart';
import 'package:netflix/infrastucture/api.dart';

import '../../model/datamodel.dart/datamodel.dart';

class MainCard extends StatelessWidget {
  int index;
  MainCard({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: MovieDb().getAllMovies(),
        builder:
            (BuildContext context, AsyncSnapshot<List<DataModel>> snapshot) {
          if (snapshot.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container(
            height: 150,
            width: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://image.tmdb.org/t/p/original/${snapshot.data![index].posterPath}'))),
          );
        });
  }
}
