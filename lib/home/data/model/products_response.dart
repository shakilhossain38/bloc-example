import 'dart:convert';

import 'package:my_app/home/domain/entity/products.dart';
import 'package:json_annotation/json_annotation.dart';

part 'products_response.g.dart';

ProductResponseModel productResponseModelFromJson(String str) =>
    ProductResponseModel.fromJson(json.decode(str) as  Map<String, dynamic>);

@JsonSerializable()
class ProductResponseModel {
  ProductResponseModel({
    required this.status,
    required this.data,
  });

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseModelFromJson(json);
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'data')
  final DataItem data;

  ProductsModel toEntity() {
    List<Image> getImages(List<ImageItem> images) {
      final tempImages = <Image>[];
      for (final element in images) {
        tempImages.add(
          Image(
            id: element.id,
            imageUrl: element.image,
            product: element.product,
            isPrimary: element.isPrimary,
          ),
        );
      }
      return tempImages;
    }

    List<Result> getProductList(List<ResultResponse> results) {
      final tempResultList = <Result>[];
      for (final element in results) {
        tempResultList.add(
          Result(
            productId: element.id,
            imageUrl: element.image,
            charge: Charge(
              bookingPrice: element.charge.bookingPrice,
              currentCharge: element.charge.currentCharge,
              isHighlighted: element.charge.highlight,
              profit: element.charge.profit,
              sellingPrice: element.charge.sellingPrice,
            ),
            images: getImages(element.images),
            productName: element.productName,
            amount: element.amount,
            description: element.description,
          ),
        );
      }
      return tempResultList;
    }

    Products getProducts(ProductsResponse response) {
      return Products(
        totalCount: response.count,
        nextUrl: response.next,
        previousUrl: response.previous.toString(),
        results: getProductList(response.results),
      );
    }

    Data getData(DataItem item) {
      return Data(products: getProducts(item.products));
    }

    return ProductsModel(
      data: getData(data),
      status: status,
    );
  }
}

@JsonSerializable()
class DataItem {
  DataItem({
    required this.categories,
    required this.products,
  });

  factory DataItem.fromJson(Map<String, dynamic> json) =>
      _$DataItemFromJson(json);
  @JsonKey(name: 'categories')
  final List<dynamic> categories;
  @JsonKey(name: 'products')
  final ProductsResponse products;
}

@JsonSerializable()
class ProductsResponse {
  ProductsResponse({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'next')
  final String next;
  @JsonKey(name: 'previous')
  final dynamic previous;
  @JsonKey(name: 'results')
  final List<ResultResponse> results;
}

@JsonSerializable()
class ResultResponse {
  ResultResponse({
    required this.id,
    required this.brand,
    required this.image,
    required this.charge,
    required this.images,
    required this.distributors,
    required this.slug,
    required this.productName,
    required this.model,
    required this.commissionType,
    required this.amount,
    required this.tag,
    required this.description,
    required this.note,
    required this.embaddedVideoLink,
    required this.maximumOrder,
    required this.stock,
    required this.isBackOrder,
    required this.specification,
    required this.warranty,
    required this.preOrder,
    required this.productReview,
    required this.isSeller,
    required this.isPhone,
    required this.willShowEmi,
    required this.badge,
    required this.isActive,
    required this.sackEquivalent,
    required this.createdAt,
    required this.updatedAt,
    required this.language,
    required this.seller,
    required this.combo,
    required this.createdBy,
    required this.updatedBy,
    required this.category,
    required this.relatedProduct,
    required this.filterValue,
  });

  factory ResultResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultResponseFromJson(json);
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'brand')
  final Brand brand;
  @JsonKey(name: 'image')
  final String image;
  @JsonKey(name: 'charge')
  final ChargeResponse charge;
  @JsonKey(name: 'images')
  final List<ImageItem> images;
  @JsonKey(name: 'distributors')
  final List<Distributor> distributors;
  @JsonKey(name: 'slug')
  final String slug;
  @JsonKey(name: 'product_name')
  final String productName;
  @JsonKey(name: 'model')
  final String model;
  @JsonKey(name: 'commission_type')
  final CommissionType commissionType;
  @JsonKey(name: 'amount')
  final String amount;
  @JsonKey(name: 'tag')
  final String tag;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'note')
  final String note;
  @JsonKey(name: 'embadded_video_link')
  final String embaddedVideoLink;
  @JsonKey(name: 'maximum_order')
  final int maximumOrder;
  @JsonKey(name: 'stock')
  final int stock;
  @JsonKey(name: 'is_back_order')
  final bool isBackOrder;
  @JsonKey(name: 'specification')
  final Specification specification;
  @JsonKey(name: 'warranty')
  final String warranty;
  @JsonKey(name: 'pre_order')
  final bool preOrder;
  @JsonKey(name: 'product_review')
  final int productReview;
  @JsonKey(name: 'is_seller')
  final bool isSeller;
  @JsonKey(name: 'is_phone')
  final bool isPhone;
  @JsonKey(name: 'will_show_emi')
  final bool willShowEmi;
  @JsonKey(name: 'badge')
  final dynamic badge;
  @JsonKey(name: 'is_active')
  final bool isActive;
  @JsonKey(name: 'sack_equivalent')
  final String sackEquivalent;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @JsonKey(name: 'language')
  final dynamic language;
  @JsonKey(name: 'seller')
  final String seller;
  @JsonKey(name: 'combo')
  final dynamic combo;
  @JsonKey(name: 'created_by')
  final CreatedBy createdBy;
  @JsonKey(name: 'updated_by')
  final dynamic updatedBy;
  @JsonKey(name: 'category')
  final List<int> category;
  @JsonKey(name: 'related_product')
  final List<dynamic> relatedProduct;
  @JsonKey(name: 'filter_value')
  final List<dynamic> filterValue;
}

@JsonSerializable()
class Brand {
  Brand({
    required this.name,
    required this.image,
    required this.headerImage,
    required this.slug,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'image')
  final String image;
  @JsonKey(name: 'header_image')
  final String? headerImage;
  @JsonKey(name: 'slug')
  final String slug;
}

@JsonSerializable()
class ChargeResponse {
  ChargeResponse({
    required this.bookingPrice,
    required this.currentCharge,
    required this.discountCharge,
    required this.sellingPrice,
    required this.profit,
    required this.isEvent,
    required this.eventId,
    required this.highlight,
    required this.highlightId,
    required this.groupping,
    required this.grouppingId,
    required this.campaignSectionId,
    required this.campaignSection,
    required this.message,
  });

  factory ChargeResponse.fromJson(Map<String, dynamic> json) =>
      _$ChargeResponseFromJson(json);
  @JsonKey(name: 'booking_price')
  final double bookingPrice;
  @JsonKey(name: 'current_charge')
  final double currentCharge;
  @JsonKey(name: 'discount_charge')
   dynamic discountCharge;
  @JsonKey(name: 'selling_price')
  final double sellingPrice;
  @JsonKey(name: 'profit')
  final double profit;
  @JsonKey(name: 'is_event')
  final bool isEvent;
  @JsonKey(name: 'event_id')
  final dynamic eventId;
  @JsonKey(name: 'highlight')
  final bool highlight;
  @JsonKey(name: 'highlight_id')
  final dynamic highlightId;
  @JsonKey(name: 'groupping')
  final bool groupping;
  @JsonKey(name: 'groupping_id')
  final dynamic grouppingId;
  @JsonKey(name: 'campaign_section_id')
  final dynamic campaignSectionId;
  @JsonKey(name: 'campaign_section')
  final bool campaignSection;
  @JsonKey(name: 'message')
  final dynamic message;
}

enum CommissionType {
  @JsonValue('Percent')
  PERCENT
}

final commissionTypeValues = EnumValues({'Percent': CommissionType.PERCENT});

enum CreatedBy {
  @JsonValue('qtecsl')
  QTECSL
}

final createdByValues = EnumValues({'qtecsl': CreatedBy.QTECSL});

@JsonSerializable()
class Distributor {
  Distributor({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.servesEverywhere,
    required this.stock,
  });

  factory Distributor.fromJson(Map<String, dynamic> json) =>
      _$DistributorFromJson(json);
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @JsonKey(name: 'serves_everywhere')
  final bool servesEverywhere;
  @JsonKey(name: 'stock')
  final int stock;
}

@JsonSerializable()
class ImageItem {
  ImageItem({
    required this.id,
    required this.image,
    required this.isPrimary,
    required this.product,
  });

  factory ImageItem.fromJson(Map<String, dynamic> json) =>
      _$ImageItemFromJson(json);
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'image')
  final String image;
  @JsonKey(name: 'is_primary')
  final bool isPrimary;
  @JsonKey(name: 'product')
  final int product;
}

enum Specification {
  @JsonValue('<|>')
  EMPTY
}

final specificationValues = EnumValues({'<|>': Specification.EMPTY});

class EnumValues<T> {
  EnumValues(this.map);

  Map<String, T> map;
  late Map<T, String> reverseMap;

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
