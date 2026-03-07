import 'package:json_annotation/json_annotation.dart';
part 'products_response_model.g.dart';

@JsonSerializable()
class ProductsResponseModel {
  final String? message;
  @JsonKey(name: 'products')
  List<ProductsData?>?  productsData;

  ProductsResponseModel({required this.message, required this.productsData});

  factory ProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseModelFromJson(json);
}

@JsonSerializable()
class ProductsData {
  @JsonKey(name: '_id')
  final String? id;
  final String? sellerId;
  final String? name;
  final List<ImagesData?>? images;
  final int? price;
  final bool? inStock;
  final String? description;
  final int? stock;
  final String? category;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ProductsData({
    required this.id,
    required this.sellerId,
    required this.name,
    required this.images,
    required this.price,
    required this.inStock,
    required this.description,
    required this.stock,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductsData.fromJson(Map<String, dynamic> json) =>
      _$ProductsDataFromJson(json);
}

@JsonSerializable()
class ImagesData {
  final String? url;
  final String? publicId;

  ImagesData({required this.url, required this.publicId});
  factory ImagesData.fromJson(Map<String, dynamic> json) =>
      _$ImagesDataFromJson(json);

}
