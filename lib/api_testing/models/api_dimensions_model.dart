class ApiDimensionsModel {
  final num width;
  final num height;
  final num depth;

  ApiDimensionsModel({
    required this.width,
    required this.height,
    required this.depth,
  });

  factory ApiDimensionsModel.fromJson(Map<String, dynamic> json) {
    return ApiDimensionsModel(
      width: json['width'],
      height: json['height'],
      depth: json['depth'],
    );
  }
}
