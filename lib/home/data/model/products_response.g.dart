// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponseModel _$ProductResponseModelFromJson(
        Map<String, dynamic> json) =>
    ProductResponseModel(
      status: json['status'] as String,
      data: DataItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductResponseModelToJson(
        ProductResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

DataItem _$DataItemFromJson(Map<String, dynamic> json) => DataItem(
      categories: json['categories'] as List<dynamic>,
      products:
          ProductsResponse.fromJson(json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataItemToJson(DataItem instance) => <String, dynamic>{
      'categories': instance.categories,
      'products': instance.products,
    };

ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) =>
    ProductsResponse(
      count: json['count'] as int,
      next: json['next'] as String,
      previous: json['previous'],
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsResponseToJson(ProductsResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

ResultResponse _$ResultResponseFromJson(Map<String, dynamic> json) =>
    ResultResponse(
      id: json['id'] as int,
      brand: Brand.fromJson(json['brand'] as Map<String, dynamic>),
      image: json['image'] as String,
      charge: ChargeResponse.fromJson(json['charge'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      distributors: (json['distributors'] as List<dynamic>)
          .map((e) => Distributor.fromJson(e as Map<String, dynamic>))
          .toList(),
      slug: json['slug'] as String,
      productName: json['product_name'] as String,
      model: json['model'] as String,
      commissionType:
          $enumDecode(_$CommissionTypeEnumMap, json['commission_type']),
      amount: json['amount'] as String,
      tag: json['tag'] as String,
      description: json['description'] as String,
      note: json['note'] as String,
      embaddedVideoLink: json['embadded_video_link'] as String,
      maximumOrder: json['maximum_order'] as int,
      stock: json['stock'] as int,
      isBackOrder: json['is_back_order'] as bool,
      specification: $enumDecode(_$SpecificationEnumMap, json['specification']),
      warranty: json['warranty'] as String,
      preOrder: json['pre_order'] as bool,
      productReview: json['product_review'] as int,
      isSeller: json['is_seller'] as bool,
      isPhone: json['is_phone'] as bool,
      willShowEmi: json['will_show_emi'] as bool,
      badge: json['badge'],
      isActive: json['is_active'] as bool,
      sackEquivalent: json['sack_equivalent'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      language: json['language'],
      seller: json['seller'] as String,
      combo: json['combo'],
      createdBy: $enumDecode(_$CreatedByEnumMap, json['created_by']),
      updatedBy: json['updated_by'],
      category:
          (json['category'] as List<dynamic>).map((e) => e as int).toList(),
      relatedProduct: json['related_product'] as List<dynamic>,
      filterValue: json['filter_value'] as List<dynamic>,
    );

Map<String, dynamic> _$ResultResponseToJson(ResultResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'image': instance.image,
      'charge': instance.charge,
      'images': instance.images,
      'distributors': instance.distributors,
      'slug': instance.slug,
      'product_name': instance.productName,
      'model': instance.model,
      'commission_type': _$CommissionTypeEnumMap[instance.commissionType]!,
      'amount': instance.amount,
      'tag': instance.tag,
      'description': instance.description,
      'note': instance.note,
      'embadded_video_link': instance.embaddedVideoLink,
      'maximum_order': instance.maximumOrder,
      'stock': instance.stock,
      'is_back_order': instance.isBackOrder,
      'specification': _$SpecificationEnumMap[instance.specification]!,
      'warranty': instance.warranty,
      'pre_order': instance.preOrder,
      'product_review': instance.productReview,
      'is_seller': instance.isSeller,
      'is_phone': instance.isPhone,
      'will_show_emi': instance.willShowEmi,
      'badge': instance.badge,
      'is_active': instance.isActive,
      'sack_equivalent': instance.sackEquivalent,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'language': instance.language,
      'seller': instance.seller,
      'combo': instance.combo,
      'created_by': _$CreatedByEnumMap[instance.createdBy]!,
      'updated_by': instance.updatedBy,
      'category': instance.category,
      'related_product': instance.relatedProduct,
      'filter_value': instance.filterValue,
    };

const _$CommissionTypeEnumMap = {
  CommissionType.PERCENT: 'Percent',
};

const _$SpecificationEnumMap = {
  Specification.EMPTY: '<|>',
};

const _$CreatedByEnumMap = {
  CreatedBy.QTECSL: 'qtecsl',
};

Brand _$BrandFromJson(Map<String, dynamic> json) => Brand(
      name: json['name'] as String,
      image: json['image'] as String,
      headerImage: json['header_image'] as String?,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'header_image': instance.headerImage,
      'slug': instance.slug,
    };

ChargeResponse _$ChargeResponseFromJson(Map<String, dynamic> json) =>
    ChargeResponse(
      bookingPrice: (json['booking_price'] as num).toDouble(),
      currentCharge: (json['current_charge'] as num).toDouble(),
      discountCharge: json['discount_charge'],
      sellingPrice: (json['selling_price'] as num).toDouble(),
      profit: (json['profit'] as num).toDouble(),
      isEvent: json['is_event'] as bool,
      eventId: json['event_id'],
      highlight: json['highlight'] as bool,
      highlightId: json['highlight_id'],
      groupping: json['groupping'] as bool,
      grouppingId: json['groupping_id'],
      campaignSectionId: json['campaign_section_id'],
      campaignSection: json['campaign_section'] as bool,
      message: json['message'],
    );

Map<String, dynamic> _$ChargeResponseToJson(ChargeResponse instance) =>
    <String, dynamic>{
      'booking_price': instance.bookingPrice,
      'current_charge': instance.currentCharge,
      'discount_charge': instance.discountCharge,
      'selling_price': instance.sellingPrice,
      'profit': instance.profit,
      'is_event': instance.isEvent,
      'event_id': instance.eventId,
      'highlight': instance.highlight,
      'highlight_id': instance.highlightId,
      'groupping': instance.groupping,
      'groupping_id': instance.grouppingId,
      'campaign_section_id': instance.campaignSectionId,
      'campaign_section': instance.campaignSection,
      'message': instance.message,
    };

Distributor _$DistributorFromJson(Map<String, dynamic> json) => Distributor(
      id: json['id'] as int,
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String,
      servesEverywhere: json['serves_everywhere'] as bool,
      stock: json['stock'] as int,
    );

Map<String, dynamic> _$DistributorToJson(Distributor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'serves_everywhere': instance.servesEverywhere,
      'stock': instance.stock,
    };

ImageItem _$ImageItemFromJson(Map<String, dynamic> json) => ImageItem(
      id: json['id'] as int,
      image: json['image'] as String,
      isPrimary: json['is_primary'] as bool,
      product: json['product'] as int,
    );

Map<String, dynamic> _$ImageItemToJson(ImageItem instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'is_primary': instance.isPrimary,
      'product': instance.product,
    };
