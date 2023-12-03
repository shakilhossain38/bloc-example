import 'package:freezed_annotation/freezed_annotation.dart';

part 'products.freezed.dart';

@freezed
class ProductsModel with _$ProductsModel {
  const factory ProductsModel({
    required String status,
    required Data data,
  }) = _ProductsModel;
}

@freezed
class Data with _$Data {
  const factory Data({
    required Products products,
  }) = _Data;
}

@freezed
class Products with _$Products {
  const factory Products({
    required int totalCount,
    required String nextUrl,
    required String previousUrl,
    required List<Result> results,
  }) = _Products;
}


@freezed
class Result with _$Result {
  const factory Result({
    required int productId,
    required String imageUrl,
    required Charge charge,
    required List<Image> images,
    required String productName,
    required String amount,
    required String description,
  }) = _Result;
}

@freezed
class Charge with _$Charge {
  const factory Charge({
    required double bookingPrice,
    required double currentCharge,
    required double sellingPrice,
    required double profit,
    required bool isHighlighted,
  }) = _Charge;
}

@freezed
class Image with _$Image {
  const factory Image({
    required int id,
    required String imageUrl,
    required int product,
    required bool isPrimary,
  }) = _Image;
}

enum SurahType {
  meccan,
  medinan,
}
