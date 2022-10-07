import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:single_screens/create_movie.dart';
import 'package:single_screens/models/movie_model.dart';
import 'package:single_screens/widget/item_conponent.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({Key? key}) : super(key: key);

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  late Box<Movie> movieBox;
  @override
  void initState() {
    super.initState();
    movieBox = Hive.box('Movies');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                movieBox.deleteAll(movieBox.keys);
              },
              icon: Icon(
                Icons.delete,
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateMovie(
                movieBox: movieBox,
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        top: true,
        child: ValueListenableBuilder<Box>(
          valueListenable: movieBox.listenable(),
          builder: (context, box, _) {
            List<Movie> movies = box.values.toList().cast<Movie>();
            return ListView.builder(
              shrinkWrap: true,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                Movie movie = movies[index];
                return Builder(builder: (context) {
                  if (movies.isNotEmpty) {
                    return ItemComponent(
                      item: movie,
                      onEdit: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CreateMovie(movieBox: movieBox, movies: movie),
                          ),
                        );
                      },
                      onDelete: () {
                        movieBox.delete(movie.id);
                      },
                    );
                  } else {
                    return Center(
                      child: Text('No Movies Found'),
                    );
                  }
                });
              },
            );
          },
        ),
      ),
    );
  }
}
