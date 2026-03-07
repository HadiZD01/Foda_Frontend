// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsResponseModel _$ProductsResponseModelFromJson(
  Map<String, dynamic> json,
) => ProductsResponseModel(
  message: json['message'] as String?,
  productsData: (json['products'] as List<dynamic>?)
      ?.map(
        (e) =>
            e == null ? null : ProductsData.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ProductsResponseModelToJson(
  ProductsResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'products': instance.productsData,
};

ProductsData _$ProductsDataFromJson(Map<String, dynamic> json) => ProductsData(
  id: json['_id'] as String?,
  sellerId: json['sellerId'] as String?,
  name: json['name'] as String?,
  images: (json['images'] as List<dynamic>?)
      ?.map(
        (e) =>
            e == null ? null : ImagesData.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  price: (json['price'] as num?)?.toInt(),
  inStock: json['inStock'] as bool?,
  description: json['description'] as String?,
  stock: (json['stock'] as num?)?.toInt(),
  category: json['category'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ProductsDataToJson(ProductsData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'sellerId': instance.sellerId,
      'name': instance.name,
      'images': instance.images,
      'price': instance.price,
      'inStock': instance.inStock,
      'description': instance.description,
      'stock': instance.stock,
      'category': instance.category,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ImagesData _$ImagesDataFromJson(Map<String, dynamic> json) => ImagesData(
  url: json['url'] as String?,
  publicId: json['publicId'] as String?,
);

Map<String, dynamic> _$ImagesDataToJson(ImagesData instance) =>
    <String, dynamic>{'url': instance.url, 'publicId': instance.publicId};
