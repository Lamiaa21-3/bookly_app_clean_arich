class BookEntity {
  final String bookId;
  final String? image;
  final String? autherName;
  final String title;
  final num? price;
  final num? rating;

  BookEntity(
      {required this.image,
      required this.autherName,
      required this.title,
      required this.price,
      required this.rating,
      required this.bookId});
}
