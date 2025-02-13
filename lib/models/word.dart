class Word {
  final String name;
  final String meaning;
  bool isBookmarked;

  Word({
    required this.name,
    required this.meaning,
    this.isBookmarked = false,
  });
}
