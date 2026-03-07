// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeProductState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeProductState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeProductState()';
}


}

/// @nodoc
class $HomeProductStateCopyWith<$Res>  {
$HomeProductStateCopyWith(HomeProductState _, $Res Function(HomeProductState) __);
}


/// Adds pattern-matching-related methods to [HomeProductState].
extension HomeProductStatePatterns on HomeProductState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( HomeProductLoading value)?  homeProductLoading,TResult Function( HomeProductSuccess value)?  homeProductSuccess,TResult Function( HomeProductError value)?  homeProductError,TResult Function( HomeProductCategorySuccess value)?  homeProductCategorySuccess,TResult Function( HomeProductCategoryError value)?  homeProductCategoryError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case HomeProductLoading() when homeProductLoading != null:
return homeProductLoading(_that);case HomeProductSuccess() when homeProductSuccess != null:
return homeProductSuccess(_that);case HomeProductError() when homeProductError != null:
return homeProductError(_that);case HomeProductCategorySuccess() when homeProductCategorySuccess != null:
return homeProductCategorySuccess(_that);case HomeProductCategoryError() when homeProductCategoryError != null:
return homeProductCategoryError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( HomeProductLoading value)  homeProductLoading,required TResult Function( HomeProductSuccess value)  homeProductSuccess,required TResult Function( HomeProductError value)  homeProductError,required TResult Function( HomeProductCategorySuccess value)  homeProductCategorySuccess,required TResult Function( HomeProductCategoryError value)  homeProductCategoryError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case HomeProductLoading():
return homeProductLoading(_that);case HomeProductSuccess():
return homeProductSuccess(_that);case HomeProductError():
return homeProductError(_that);case HomeProductCategorySuccess():
return homeProductCategorySuccess(_that);case HomeProductCategoryError():
return homeProductCategoryError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( HomeProductLoading value)?  homeProductLoading,TResult? Function( HomeProductSuccess value)?  homeProductSuccess,TResult? Function( HomeProductError value)?  homeProductError,TResult? Function( HomeProductCategorySuccess value)?  homeProductCategorySuccess,TResult? Function( HomeProductCategoryError value)?  homeProductCategoryError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case HomeProductLoading() when homeProductLoading != null:
return homeProductLoading(_that);case HomeProductSuccess() when homeProductSuccess != null:
return homeProductSuccess(_that);case HomeProductError() when homeProductError != null:
return homeProductError(_that);case HomeProductCategorySuccess() when homeProductCategorySuccess != null:
return homeProductCategorySuccess(_that);case HomeProductCategoryError() when homeProductCategoryError != null:
return homeProductCategoryError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  homeProductLoading,TResult Function( List<ProductsData?>? productsData)?  homeProductSuccess,TResult Function( ApiErrorModel apiErrorModel)?  homeProductError,TResult Function( List<ProductsData?>? data)?  homeProductCategorySuccess,TResult Function()?  homeProductCategoryError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case HomeProductLoading() when homeProductLoading != null:
return homeProductLoading();case HomeProductSuccess() when homeProductSuccess != null:
return homeProductSuccess(_that.productsData);case HomeProductError() when homeProductError != null:
return homeProductError(_that.apiErrorModel);case HomeProductCategorySuccess() when homeProductCategorySuccess != null:
return homeProductCategorySuccess(_that.data);case HomeProductCategoryError() when homeProductCategoryError != null:
return homeProductCategoryError();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  homeProductLoading,required TResult Function( List<ProductsData?>? productsData)  homeProductSuccess,required TResult Function( ApiErrorModel apiErrorModel)  homeProductError,required TResult Function( List<ProductsData?>? data)  homeProductCategorySuccess,required TResult Function()  homeProductCategoryError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case HomeProductLoading():
return homeProductLoading();case HomeProductSuccess():
return homeProductSuccess(_that.productsData);case HomeProductError():
return homeProductError(_that.apiErrorModel);case HomeProductCategorySuccess():
return homeProductCategorySuccess(_that.data);case HomeProductCategoryError():
return homeProductCategoryError();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  homeProductLoading,TResult? Function( List<ProductsData?>? productsData)?  homeProductSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  homeProductError,TResult? Function( List<ProductsData?>? data)?  homeProductCategorySuccess,TResult? Function()?  homeProductCategoryError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case HomeProductLoading() when homeProductLoading != null:
return homeProductLoading();case HomeProductSuccess() when homeProductSuccess != null:
return homeProductSuccess(_that.productsData);case HomeProductError() when homeProductError != null:
return homeProductError(_that.apiErrorModel);case HomeProductCategorySuccess() when homeProductCategorySuccess != null:
return homeProductCategorySuccess(_that.data);case HomeProductCategoryError() when homeProductCategoryError != null:
return homeProductCategoryError();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeProductState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeProductState.initial()';
}


}




/// @nodoc


class HomeProductLoading implements HomeProductState {
  const HomeProductLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeProductLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeProductState.homeProductLoading()';
}


}




/// @nodoc


class HomeProductSuccess implements HomeProductState {
  const HomeProductSuccess(final  List<ProductsData?>? productsData): _productsData = productsData;
  

 final  List<ProductsData?>? _productsData;
 List<ProductsData?>? get productsData {
  final value = _productsData;
  if (value == null) return null;
  if (_productsData is EqualUnmodifiableListView) return _productsData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeProductSuccessCopyWith<HomeProductSuccess> get copyWith => _$HomeProductSuccessCopyWithImpl<HomeProductSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeProductSuccess&&const DeepCollectionEquality().equals(other._productsData, _productsData));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_productsData));

@override
String toString() {
  return 'HomeProductState.homeProductSuccess(productsData: $productsData)';
}


}

/// @nodoc
abstract mixin class $HomeProductSuccessCopyWith<$Res> implements $HomeProductStateCopyWith<$Res> {
  factory $HomeProductSuccessCopyWith(HomeProductSuccess value, $Res Function(HomeProductSuccess) _then) = _$HomeProductSuccessCopyWithImpl;
@useResult
$Res call({
 List<ProductsData?>? productsData
});




}
/// @nodoc
class _$HomeProductSuccessCopyWithImpl<$Res>
    implements $HomeProductSuccessCopyWith<$Res> {
  _$HomeProductSuccessCopyWithImpl(this._self, this._then);

  final HomeProductSuccess _self;
  final $Res Function(HomeProductSuccess) _then;

/// Create a copy of HomeProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productsData = freezed,}) {
  return _then(HomeProductSuccess(
freezed == productsData ? _self._productsData : productsData // ignore: cast_nullable_to_non_nullable
as List<ProductsData?>?,
  ));
}


}

/// @nodoc


class HomeProductError implements HomeProductState {
  const HomeProductError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of HomeProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeProductErrorCopyWith<HomeProductError> get copyWith => _$HomeProductErrorCopyWithImpl<HomeProductError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeProductError&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'HomeProductState.homeProductError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $HomeProductErrorCopyWith<$Res> implements $HomeProductStateCopyWith<$Res> {
  factory $HomeProductErrorCopyWith(HomeProductError value, $Res Function(HomeProductError) _then) = _$HomeProductErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$HomeProductErrorCopyWithImpl<$Res>
    implements $HomeProductErrorCopyWith<$Res> {
  _$HomeProductErrorCopyWithImpl(this._self, this._then);

  final HomeProductError _self;
  final $Res Function(HomeProductError) _then;

/// Create a copy of HomeProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(HomeProductError(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class HomeProductCategorySuccess implements HomeProductState {
  const HomeProductCategorySuccess(final  List<ProductsData?>? data): _data = data;
  

 final  List<ProductsData?>? _data;
 List<ProductsData?>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeProductCategorySuccessCopyWith<HomeProductCategorySuccess> get copyWith => _$HomeProductCategorySuccessCopyWithImpl<HomeProductCategorySuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeProductCategorySuccess&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'HomeProductState.homeProductCategorySuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $HomeProductCategorySuccessCopyWith<$Res> implements $HomeProductStateCopyWith<$Res> {
  factory $HomeProductCategorySuccessCopyWith(HomeProductCategorySuccess value, $Res Function(HomeProductCategorySuccess) _then) = _$HomeProductCategorySuccessCopyWithImpl;
@useResult
$Res call({
 List<ProductsData?>? data
});




}
/// @nodoc
class _$HomeProductCategorySuccessCopyWithImpl<$Res>
    implements $HomeProductCategorySuccessCopyWith<$Res> {
  _$HomeProductCategorySuccessCopyWithImpl(this._self, this._then);

  final HomeProductCategorySuccess _self;
  final $Res Function(HomeProductCategorySuccess) _then;

/// Create a copy of HomeProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(HomeProductCategorySuccess(
freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProductsData?>?,
  ));
}


}

/// @nodoc


class HomeProductCategoryError implements HomeProductState {
  const HomeProductCategoryError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeProductCategoryError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeProductState.homeProductCategoryError()';
}


}




// dart format on
