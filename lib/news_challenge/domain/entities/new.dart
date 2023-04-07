import 'package:equatable/equatable.dart';

class NewEntity extends Equatable {
  final String categoryName;
  final String image;
  final String overView;
  final String desc;
  final String title;
  final String source;
  final String date;
  final String authorName;


  const NewEntity({
    required this.categoryName,
    required this.image,
    required this.overView,
    required this.desc,
  required  this.title,
    required this.source,
    required this.date,
    required this.authorName
});

  @override
  List<Object?> get props => [
     date,
    title,
    overView,
    desc,
    image,
    categoryName,
    source,
    authorName
  ];
}
