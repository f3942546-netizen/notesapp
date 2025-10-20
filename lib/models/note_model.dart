import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitile;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel(
    this.color, {
    required this.title,
    required this.subtitile,
    required this.date,
  });
}
