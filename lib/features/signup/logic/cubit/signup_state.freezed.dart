// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>()';
}


}

/// @nodoc
class $SignUpStateCopyWith<T,$Res>  {
$SignUpStateCopyWith(SignUpState<T> _, $Res Function(SignUpState<T>) __);
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns<T> on SignUpState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( SignUploading<T> value)?  signUploading,TResult Function( SignUpSuccess<T> value)?  signUpSuccess,TResult Function( VerifeyEmailSuccess<T> value)?  verifeyEmailSuccess,TResult Function( VerifeyEmailFailure<T> value)?  verifeyEmailFailure,TResult Function( SignUpError<T> value)?  signUpFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignUploading() when signUploading != null:
return signUploading(_that);case SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that);case VerifeyEmailSuccess() when verifeyEmailSuccess != null:
return verifeyEmailSuccess(_that);case VerifeyEmailFailure() when verifeyEmailFailure != null:
return verifeyEmailFailure(_that);case SignUpError() when signUpFailure != null:
return signUpFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( SignUploading<T> value)  signUploading,required TResult Function( SignUpSuccess<T> value)  signUpSuccess,required TResult Function( VerifeyEmailSuccess<T> value)  verifeyEmailSuccess,required TResult Function( VerifeyEmailFailure<T> value)  verifeyEmailFailure,required TResult Function( SignUpError<T> value)  signUpFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SignUploading():
return signUploading(_that);case SignUpSuccess():
return signUpSuccess(_that);case VerifeyEmailSuccess():
return verifeyEmailSuccess(_that);case VerifeyEmailFailure():
return verifeyEmailFailure(_that);case SignUpError():
return signUpFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( SignUploading<T> value)?  signUploading,TResult? Function( SignUpSuccess<T> value)?  signUpSuccess,TResult? Function( VerifeyEmailSuccess<T> value)?  verifeyEmailSuccess,TResult? Function( VerifeyEmailFailure<T> value)?  verifeyEmailFailure,TResult? Function( SignUpError<T> value)?  signUpFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignUploading() when signUploading != null:
return signUploading(_that);case SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that);case VerifeyEmailSuccess() when verifeyEmailSuccess != null:
return verifeyEmailSuccess(_that);case VerifeyEmailFailure() when verifeyEmailFailure != null:
return verifeyEmailFailure(_that);case SignUpError() when signUpFailure != null:
return signUpFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  signUploading,TResult Function( T data)?  signUpSuccess,TResult Function( T data)?  verifeyEmailSuccess,TResult Function( ApiErrorModel apiErrorModel)?  verifeyEmailFailure,TResult Function( ApiErrorModel apiErrorModel)?  signUpFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignUploading() when signUploading != null:
return signUploading();case SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that.data);case VerifeyEmailSuccess() when verifeyEmailSuccess != null:
return verifeyEmailSuccess(_that.data);case VerifeyEmailFailure() when verifeyEmailFailure != null:
return verifeyEmailFailure(_that.apiErrorModel);case SignUpError() when signUpFailure != null:
return signUpFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  signUploading,required TResult Function( T data)  signUpSuccess,required TResult Function( T data)  verifeyEmailSuccess,required TResult Function( ApiErrorModel apiErrorModel)  verifeyEmailFailure,required TResult Function( ApiErrorModel apiErrorModel)  signUpFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SignUploading():
return signUploading();case SignUpSuccess():
return signUpSuccess(_that.data);case VerifeyEmailSuccess():
return verifeyEmailSuccess(_that.data);case VerifeyEmailFailure():
return verifeyEmailFailure(_that.apiErrorModel);case SignUpError():
return signUpFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  signUploading,TResult? Function( T data)?  signUpSuccess,TResult? Function( T data)?  verifeyEmailSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  verifeyEmailFailure,TResult? Function( ApiErrorModel apiErrorModel)?  signUpFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignUploading() when signUploading != null:
return signUploading();case SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that.data);case VerifeyEmailSuccess() when verifeyEmailSuccess != null:
return verifeyEmailSuccess(_that.data);case VerifeyEmailFailure() when verifeyEmailFailure != null:
return verifeyEmailFailure(_that.apiErrorModel);case SignUpError() when signUpFailure != null:
return signUpFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements SignUpState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.initial()';
}


}




/// @nodoc


class SignUploading<T> implements SignUpState<T> {
  const SignUploading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUploading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.signUploading()';
}


}




/// @nodoc


class SignUpSuccess<T> implements SignUpState<T> {
  const SignUpSuccess(this.data);
  

 final  T data;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpSuccessCopyWith<T, SignUpSuccess<T>> get copyWith => _$SignUpSuccessCopyWithImpl<T, SignUpSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SignUpState<$T>.signUpSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignUpSuccessCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $SignUpSuccessCopyWith(SignUpSuccess<T> value, $Res Function(SignUpSuccess<T>) _then) = _$SignUpSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SignUpSuccessCopyWithImpl<T,$Res>
    implements $SignUpSuccessCopyWith<T, $Res> {
  _$SignUpSuccessCopyWithImpl(this._self, this._then);

  final SignUpSuccess<T> _self;
  final $Res Function(SignUpSuccess<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SignUpSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class VerifeyEmailSuccess<T> implements SignUpState<T> {
  const VerifeyEmailSuccess(this.data);
  

 final  T data;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifeyEmailSuccessCopyWith<T, VerifeyEmailSuccess<T>> get copyWith => _$VerifeyEmailSuccessCopyWithImpl<T, VerifeyEmailSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifeyEmailSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SignUpState<$T>.verifeyEmailSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $VerifeyEmailSuccessCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $VerifeyEmailSuccessCopyWith(VerifeyEmailSuccess<T> value, $Res Function(VerifeyEmailSuccess<T>) _then) = _$VerifeyEmailSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$VerifeyEmailSuccessCopyWithImpl<T,$Res>
    implements $VerifeyEmailSuccessCopyWith<T, $Res> {
  _$VerifeyEmailSuccessCopyWithImpl(this._self, this._then);

  final VerifeyEmailSuccess<T> _self;
  final $Res Function(VerifeyEmailSuccess<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(VerifeyEmailSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class VerifeyEmailFailure<T> implements SignUpState<T> {
  const VerifeyEmailFailure(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifeyEmailFailureCopyWith<T, VerifeyEmailFailure<T>> get copyWith => _$VerifeyEmailFailureCopyWithImpl<T, VerifeyEmailFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifeyEmailFailure<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'SignUpState<$T>.verifeyEmailFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $VerifeyEmailFailureCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $VerifeyEmailFailureCopyWith(VerifeyEmailFailure<T> value, $Res Function(VerifeyEmailFailure<T>) _then) = _$VerifeyEmailFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$VerifeyEmailFailureCopyWithImpl<T,$Res>
    implements $VerifeyEmailFailureCopyWith<T, $Res> {
  _$VerifeyEmailFailureCopyWithImpl(this._self, this._then);

  final VerifeyEmailFailure<T> _self;
  final $Res Function(VerifeyEmailFailure<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(VerifeyEmailFailure<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class SignUpError<T> implements SignUpState<T> {
  const SignUpError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpErrorCopyWith<T, SignUpError<T>> get copyWith => _$SignUpErrorCopyWithImpl<T, SignUpError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpError<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'SignUpState<$T>.signUpFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $SignUpErrorCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $SignUpErrorCopyWith(SignUpError<T> value, $Res Function(SignUpError<T>) _then) = _$SignUpErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$SignUpErrorCopyWithImpl<T,$Res>
    implements $SignUpErrorCopyWith<T, $Res> {
  _$SignUpErrorCopyWithImpl(this._self, this._then);

  final SignUpError<T> _self;
  final $Res Function(SignUpError<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(SignUpError<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
