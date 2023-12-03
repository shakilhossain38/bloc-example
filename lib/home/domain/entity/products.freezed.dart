// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsModel {
  String get status => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsModelCopyWith<ProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsModelCopyWith<$Res> {
  factory $ProductsModelCopyWith(
          ProductsModel value, $Res Function(ProductsModel) then) =
      _$ProductsModelCopyWithImpl<$Res, ProductsModel>;
  @useResult
  $Res call({String status, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$ProductsModelCopyWithImpl<$Res, $Val extends ProductsModel>
    implements $ProductsModelCopyWith<$Res> {
  _$ProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsModelImplCopyWith<$Res>
    implements $ProductsModelCopyWith<$Res> {
  factory _$$ProductsModelImplCopyWith(
          _$ProductsModelImpl value, $Res Function(_$ProductsModelImpl) then) =
      __$$ProductsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ProductsModelImplCopyWithImpl<$Res>
    extends _$ProductsModelCopyWithImpl<$Res, _$ProductsModelImpl>
    implements _$$ProductsModelImplCopyWith<$Res> {
  __$$ProductsModelImplCopyWithImpl(
      _$ProductsModelImpl _value, $Res Function(_$ProductsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$ProductsModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc

class _$ProductsModelImpl implements _ProductsModel {
  const _$ProductsModelImpl({required this.status, required this.data});

  @override
  final String status;
  @override
  final Data data;

  @override
  String toString() {
    return 'ProductsModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsModelImplCopyWith<_$ProductsModelImpl> get copyWith =>
      __$$ProductsModelImplCopyWithImpl<_$ProductsModelImpl>(this, _$identity);
}

abstract class _ProductsModel implements ProductsModel {
  const factory _ProductsModel(
      {required final String status,
      required final Data data}) = _$ProductsModelImpl;

  @override
  String get status;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$ProductsModelImplCopyWith<_$ProductsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Data {
  Products get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({Products products});

  $ProductsCopyWith<$Res> get products;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductsCopyWith<$Res> get products {
    return $ProductsCopyWith<$Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Products products});

  @override
  $ProductsCopyWith<$Res> get products;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$DataImpl(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products,
    ));
  }
}

/// @nodoc

class _$DataImpl implements _Data {
  const _$DataImpl({required this.products});

  @override
  final Products products;

  @override
  String toString() {
    return 'Data(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, products);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);
}

abstract class _Data implements Data {
  const factory _Data({required final Products products}) = _$DataImpl;

  @override
  Products get products;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Products {
  int get totalCount => throw _privateConstructorUsedError;
  String get nextUrl => throw _privateConstructorUsedError;
  String get previousUrl => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res, Products>;
  @useResult
  $Res call(
      {int totalCount,
      String nextUrl,
      String previousUrl,
      List<Result> results});
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res, $Val extends Products>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? nextUrl = null,
    Object? previousUrl = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      nextUrl: null == nextUrl
          ? _value.nextUrl
          : nextUrl // ignore: cast_nullable_to_non_nullable
              as String,
      previousUrl: null == previousUrl
          ? _value.previousUrl
          : previousUrl // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsImplCopyWith<$Res>
    implements $ProductsCopyWith<$Res> {
  factory _$$ProductsImplCopyWith(
          _$ProductsImpl value, $Res Function(_$ProductsImpl) then) =
      __$$ProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalCount,
      String nextUrl,
      String previousUrl,
      List<Result> results});
}

/// @nodoc
class __$$ProductsImplCopyWithImpl<$Res>
    extends _$ProductsCopyWithImpl<$Res, _$ProductsImpl>
    implements _$$ProductsImplCopyWith<$Res> {
  __$$ProductsImplCopyWithImpl(
      _$ProductsImpl _value, $Res Function(_$ProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? nextUrl = null,
    Object? previousUrl = null,
    Object? results = null,
  }) {
    return _then(_$ProductsImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      nextUrl: null == nextUrl
          ? _value.nextUrl
          : nextUrl // ignore: cast_nullable_to_non_nullable
              as String,
      previousUrl: null == previousUrl
          ? _value.previousUrl
          : previousUrl // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc

class _$ProductsImpl implements _Products {
  const _$ProductsImpl(
      {required this.totalCount,
      required this.nextUrl,
      required this.previousUrl,
      required final List<Result> results})
      : _results = results;

  @override
  final int totalCount;
  @override
  final String nextUrl;
  @override
  final String previousUrl;
  final List<Result> _results;
  @override
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'Products(totalCount: $totalCount, nextUrl: $nextUrl, previousUrl: $previousUrl, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.nextUrl, nextUrl) || other.nextUrl == nextUrl) &&
            (identical(other.previousUrl, previousUrl) ||
                other.previousUrl == previousUrl) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalCount, nextUrl, previousUrl,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      __$$ProductsImplCopyWithImpl<_$ProductsImpl>(this, _$identity);
}

abstract class _Products implements Products {
  const factory _Products(
      {required final int totalCount,
      required final String nextUrl,
      required final String previousUrl,
      required final List<Result> results}) = _$ProductsImpl;

  @override
  int get totalCount;
  @override
  String get nextUrl;
  @override
  String get previousUrl;
  @override
  List<Result> get results;
  @override
  @JsonKey(ignore: true)
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Result {
  int get productId => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  Charge get charge => throw _privateConstructorUsedError;
  List<Image> get images => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {int productId,
      String imageUrl,
      Charge charge,
      List<Image> images,
      String productName,
      String amount,
      String description});

  $ChargeCopyWith<$Res> get charge;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? imageUrl = null,
    Object? charge = null,
    Object? images = null,
    Object? productName = null,
    Object? amount = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      charge: null == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as Charge,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChargeCopyWith<$Res> get charge {
    return $ChargeCopyWith<$Res>(_value.charge, (value) {
      return _then(_value.copyWith(charge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productId,
      String imageUrl,
      Charge charge,
      List<Image> images,
      String productName,
      String amount,
      String description});

  @override
  $ChargeCopyWith<$Res> get charge;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? imageUrl = null,
    Object? charge = null,
    Object? images = null,
    Object? productName = null,
    Object? amount = null,
    Object? description = null,
  }) {
    return _then(_$ResultImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      charge: null == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as Charge,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {required this.productId,
      required this.imageUrl,
      required this.charge,
      required final List<Image> images,
      required this.productName,
      required this.amount,
      required this.description})
      : _images = images;

  @override
  final int productId;
  @override
  final String imageUrl;
  @override
  final Charge charge;
  final List<Image> _images;
  @override
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String productName;
  @override
  final String amount;
  @override
  final String description;

  @override
  String toString() {
    return 'Result(productId: $productId, imageUrl: $imageUrl, charge: $charge, images: $images, productName: $productName, amount: $amount, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.charge, charge) || other.charge == charge) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      imageUrl,
      charge,
      const DeepCollectionEquality().hash(_images),
      productName,
      amount,
      description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);
}

abstract class _Result implements Result {
  const factory _Result(
      {required final int productId,
      required final String imageUrl,
      required final Charge charge,
      required final List<Image> images,
      required final String productName,
      required final String amount,
      required final String description}) = _$ResultImpl;

  @override
  int get productId;
  @override
  String get imageUrl;
  @override
  Charge get charge;
  @override
  List<Image> get images;
  @override
  String get productName;
  @override
  String get amount;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Charge {
  double get bookingPrice => throw _privateConstructorUsedError;
  double get currentCharge => throw _privateConstructorUsedError;
  double get sellingPrice => throw _privateConstructorUsedError;
  double get profit => throw _privateConstructorUsedError;
  bool get isHighlighted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChargeCopyWith<Charge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargeCopyWith<$Res> {
  factory $ChargeCopyWith(Charge value, $Res Function(Charge) then) =
      _$ChargeCopyWithImpl<$Res, Charge>;
  @useResult
  $Res call(
      {double bookingPrice,
      double currentCharge,
      double sellingPrice,
      double profit,
      bool isHighlighted});
}

/// @nodoc
class _$ChargeCopyWithImpl<$Res, $Val extends Charge>
    implements $ChargeCopyWith<$Res> {
  _$ChargeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingPrice = null,
    Object? currentCharge = null,
    Object? sellingPrice = null,
    Object? profit = null,
    Object? isHighlighted = null,
  }) {
    return _then(_value.copyWith(
      bookingPrice: null == bookingPrice
          ? _value.bookingPrice
          : bookingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currentCharge: null == currentCharge
          ? _value.currentCharge
          : currentCharge // ignore: cast_nullable_to_non_nullable
              as double,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      profit: null == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as double,
      isHighlighted: null == isHighlighted
          ? _value.isHighlighted
          : isHighlighted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChargeImplCopyWith<$Res> implements $ChargeCopyWith<$Res> {
  factory _$$ChargeImplCopyWith(
          _$ChargeImpl value, $Res Function(_$ChargeImpl) then) =
      __$$ChargeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double bookingPrice,
      double currentCharge,
      double sellingPrice,
      double profit,
      bool isHighlighted});
}

/// @nodoc
class __$$ChargeImplCopyWithImpl<$Res>
    extends _$ChargeCopyWithImpl<$Res, _$ChargeImpl>
    implements _$$ChargeImplCopyWith<$Res> {
  __$$ChargeImplCopyWithImpl(
      _$ChargeImpl _value, $Res Function(_$ChargeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingPrice = null,
    Object? currentCharge = null,
    Object? sellingPrice = null,
    Object? profit = null,
    Object? isHighlighted = null,
  }) {
    return _then(_$ChargeImpl(
      bookingPrice: null == bookingPrice
          ? _value.bookingPrice
          : bookingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      currentCharge: null == currentCharge
          ? _value.currentCharge
          : currentCharge // ignore: cast_nullable_to_non_nullable
              as double,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      profit: null == profit
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as double,
      isHighlighted: null == isHighlighted
          ? _value.isHighlighted
          : isHighlighted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChargeImpl implements _Charge {
  const _$ChargeImpl(
      {required this.bookingPrice,
      required this.currentCharge,
      required this.sellingPrice,
      required this.profit,
      required this.isHighlighted});

  @override
  final double bookingPrice;
  @override
  final double currentCharge;
  @override
  final double sellingPrice;
  @override
  final double profit;
  @override
  final bool isHighlighted;

  @override
  String toString() {
    return 'Charge(bookingPrice: $bookingPrice, currentCharge: $currentCharge, sellingPrice: $sellingPrice, profit: $profit, isHighlighted: $isHighlighted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargeImpl &&
            (identical(other.bookingPrice, bookingPrice) ||
                other.bookingPrice == bookingPrice) &&
            (identical(other.currentCharge, currentCharge) ||
                other.currentCharge == currentCharge) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.profit, profit) || other.profit == profit) &&
            (identical(other.isHighlighted, isHighlighted) ||
                other.isHighlighted == isHighlighted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingPrice, currentCharge,
      sellingPrice, profit, isHighlighted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargeImplCopyWith<_$ChargeImpl> get copyWith =>
      __$$ChargeImplCopyWithImpl<_$ChargeImpl>(this, _$identity);
}

abstract class _Charge implements Charge {
  const factory _Charge(
      {required final double bookingPrice,
      required final double currentCharge,
      required final double sellingPrice,
      required final double profit,
      required final bool isHighlighted}) = _$ChargeImpl;

  @override
  double get bookingPrice;
  @override
  double get currentCharge;
  @override
  double get sellingPrice;
  @override
  double get profit;
  @override
  bool get isHighlighted;
  @override
  @JsonKey(ignore: true)
  _$$ChargeImplCopyWith<_$ChargeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Image {
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get product => throw _privateConstructorUsedError;
  bool get isPrimary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({int id, String imageUrl, int product, bool isPrimary});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? product = null,
    Object? isPrimary = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String imageUrl, int product, bool isPrimary});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? product = null,
    Object? isPrimary = null,
  }) {
    return _then(_$ImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {required this.id,
      required this.imageUrl,
      required this.product,
      required this.isPrimary});

  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final int product;
  @override
  final bool isPrimary;

  @override
  String toString() {
    return 'Image(id: $id, imageUrl: $imageUrl, product: $product, isPrimary: $isPrimary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, imageUrl, product, isPrimary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);
}

abstract class _Image implements Image {
  const factory _Image(
      {required final int id,
      required final String imageUrl,
      required final int product,
      required final bool isPrimary}) = _$ImageImpl;

  @override
  int get id;
  @override
  String get imageUrl;
  @override
  int get product;
  @override
  bool get isPrimary;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
