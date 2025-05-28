import 'package:flutter/material.dart';
import '../../models/api_product_model.dart';

class ApiProductItem extends StatelessWidget {
  final ApiProductModel product;

  const ApiProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          child: Image.network(
            product.thumbnail,
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder:
                (context, error, stackTrace) =>
                    const Icon(Icons.broken_image, size: 100),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                product.description,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "\$${product.price}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 10),
                  if (product.discountPercentage > 0)
                    Text(
                      "-${product.discountPercentage.toStringAsFixed(1)}% OFF",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                  const SizedBox(width: 5),
                  Text("${product.rating}"),
                  const Spacer(),
                  Text(
                    product.availabilityStatus,
                    style: TextStyle(
                      fontSize: 16,
                      color:
                          product.availabilityStatus == "In Stock"
                              ? Colors.green
                              : Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Reviews:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ...product.reviews.map(
                (review) => ListTile(
                  leading: const Icon(Icons.person, size: 40),
                  title: Text(
                    review.reviewerName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const SizedBox(width: 5),
                          Text("${review.rating}"),
                        ],
                      ),
                      Text(review.comment),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
