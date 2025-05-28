import 'package:hanka4a/features/api_testing/models/api_dimensions_model.dart';
import 'package:hanka4a/features/api_testing/models/api_meta_model.dart';
import 'package:hanka4a/features/api_testing/models/api_review_model.dart';

class ApiProductModel {
  final num id;
  final String title;
  final String description;
  final String category;
  final num price;
  final num discountPercentage;
  final num rating;
  final num stock;
  final List<String> tags;
  final String? brand;
  final String sku;
  final num weight;
  final ApiDimensionsModel dimensions;
  final String warrantyInformation;
  final String shippingInformation;
  final String availabilityStatus;
  final List<ApiReviewModel> reviews;
  final String returnPolicy;
  final num minimumOrderQuantity;
  final ApiMetaModel meta;
  final List<String> images;
  final String thumbnail;

  ApiProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
     this.brand,
    required this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required this.images,
    required this.thumbnail,
  });

  factory ApiProductModel.fromJson(Map<String, dynamic> json) {
    return ApiProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      category: json['category'],
      price: json['price'],
      discountPercentage: json['discountPercentage'],
      rating: json['rating'],
      stock: json['stock'],
      tags: List<String>.from(json['tags']),
      brand: json['brand'] ?? "New Brand",
      sku: json['sku'],
      weight: json['weight'],
      dimensions: ApiDimensionsModel.fromJson(json['dimensions']),
      warrantyInformation: json['warrantyInformation'],
      shippingInformation: json['shippingInformation'],
      availabilityStatus: json['availabilityStatus'],
      reviews:
          (json['reviews'] as List)
              .map((review) => ApiReviewModel.fromJson(review))
              .toList(),
      returnPolicy: json['returnPolicy'],
      minimumOrderQuantity: json['minimumOrderQuantity'],
      meta: ApiMetaModel.fromJson(json['meta']),
      images: List<String>.from(json['images']),
      thumbnail: json['thumbnail'],
    );
  }
}

List<ApiProductModel> getDummyModels() {
  return List.generate(
    10,
    (index) => ApiProductModel(
      id: index + 1,
      title: "Dummy Product ${index + 1}",
      description:
          "This is a dummy product description for product ${index + 1}.",
      category: index % 2 == 0 ? "electronics" : "home appliances",
      price: (index + 1) * 10.0,
      discountPercentage: (index % 5 + 1) * 5.0,
      rating: 3.5 + (index % 5) * 0.5,
      stock: 5 + index * 3,
      tags: ["dummy", index % 2 == 0 ? "electronics" : "home"],
      brand: "Brand${index + 1}",
      sku: "DUMMY${index + 1}SKU",
      weight: (index + 1) * 1.2,
      dimensions: ApiDimensionsModel(
        width: 10 + index,
        height: 5 + index,
        depth: 2 + index,
      ),
      warrantyInformation: "${index % 2 == 0 ? "6 months" : "1 year"} warranty",
      shippingInformation: "Ships in ${index + 2} days",
      availabilityStatus: index % 3 == 0 ? "Out of Stock" : "In Stock",
      reviews: List.generate(
        3,
        (revIndex) => ApiReviewModel(
          rating: 3.0 + revIndex * 0.5,
          comment: "Great product ${index + 1}, review ${revIndex + 1}!",
          date: DateTime.now().subtract(Duration(days: revIndex * 2)),
          reviewerName: "Reviewer ${revIndex + 1}",
          reviewerEmail: "reviewer${revIndex + 1}@email.com",
        ),
      ),
      returnPolicy: "${index % 2 == 0 ? "14" : "30"} days return policy",
      minimumOrderQuantity: 1 + (index % 3),
      meta: ApiMetaModel(
        createdAt: DateTime.now().subtract(Duration(days: index * 3)),
        updatedAt: DateTime.now().subtract(Duration(days: index)),
        barcode: "BARCODE${index + 1}",
        qrCode: "https://dummy.qr.code/${index + 1}",
      ),
      images: ["https://dummy.image/${index + 1}.png"],
      thumbnail: "https://dummy.image/thumb${index + 1}.png",
    ),
  );
}
