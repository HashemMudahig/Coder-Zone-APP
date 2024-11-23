class Course {
  final int id;
  final String title;
  final String imageUrl;
  final double percentage;
  final double rating;
  final int ratings;
  final String category;
  final String detail;
  final int videos;
  final int enrolled;

  Course(this.id, this.title, this.imageUrl, this.percentage, this.ratings,
      this.rating, this.category, this.enrolled, this.videos, this.detail);
}
