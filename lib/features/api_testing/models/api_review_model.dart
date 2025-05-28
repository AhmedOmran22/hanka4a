class ApiReviewModel {
  final double rating;
  final String comment;
  final DateTime date;
  final String reviewerName;
  final String reviewerEmail;

  ApiReviewModel({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  factory ApiReviewModel.fromJson(Map<String, dynamic> json) {
    return ApiReviewModel(
      rating: json['rating'].toDouble(),
      comment: json['comment'],
      date: DateTime.parse(json['date']),
      reviewerName: json['reviewerName'],
      reviewerEmail: json['reviewerEmail'],
    );
  }
}
