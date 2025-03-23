class ApiMetaModel {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String barcode;
  final String qrCode;

  ApiMetaModel({
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrCode,
  });

  factory ApiMetaModel.fromJson(Map<String, dynamic> json) {
    return ApiMetaModel(
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      barcode: json['barcode'],
      qrCode: json['qrCode'],
    );
  }
}
