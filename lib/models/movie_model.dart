// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'movie_model.g.dart';

@HiveType(typeId: 1)
class Movie {
  @HiveField(0)
  final String url;
  @HiveField(1)
  final String id;
  @HiveField(2)
  final String name;

  Movie({
    required this.url,
    required this.name,
    required this.id,
  });

  Movie copyWith({
    String? url,
    String? id,
    String? name,
  }) {
    return Movie(
      url: url ?? this.url,
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
