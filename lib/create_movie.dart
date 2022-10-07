import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:single_screens/models/movie_model.dart';

class CreateMovie extends StatefulWidget {
  final Movie? movies;
  final Box movieBox;
  const CreateMovie({
    super.key,
    this.movies,
    required this.movieBox,
  });

  @override
  State<CreateMovie> createState() => _CreateMovieState();
}

class _CreateMovieState extends State<CreateMovie> {
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController urlCtrl = TextEditingController();
  @override
  void initState() {
    super.initState();
    if (widget.movies != null) {
      nameCtrl.text = widget.movies!.name;
      urlCtrl.text = widget.movies!.url;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: true,
          child: Container(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                TextField(
                  controller: nameCtrl,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: urlCtrl,
                  decoration: InputDecoration(
                    hintText: 'Url',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (widget.movies != null) {
                        widget.movieBox.put(
                          widget.movies!.id,
                          widget.movies!.copyWith(
                            name: nameCtrl.text,
                            url: urlCtrl.text,
                          ),
                        );
                      } else {
                        Random random = Random();
                        Movie movie = Movie(
                          id: '${random.nextInt(100000)}',
                          url: urlCtrl.text,
                          name: nameCtrl.text,
                        );
                        widget.movieBox.put(movie.id, movie);
                      }
                      Navigator.pop(context);
                    },
                    child: const Text('Done'))
              ],
            ),
          )),
    );
  }
}
