// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashScreenState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashScreenState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashScreenState()';
}


}

/// @nodoc
class $SplashScreenStateCopyWith<$Res>  {
$SplashScreenStateCopyWith(SplashScreenState _, $Res Function(SplashScreenState) __);
}


/// Adds pattern-matching-related methods to [SplashScreenState].
extension SplashScreenStatePatterns on SplashScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SplashScreenInitial value)?  splashScreenInitial,TResult Function( SplashScreenInitializing value)?  splashScreenInitializing,TResult Function( SplashScreenInitialized value)?  splashScreenInitialized,TResult Function( SplashScreenFailed value)?  splashScreenFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SplashScreenInitial() when splashScreenInitial != null:
return splashScreenInitial(_that);case SplashScreenInitializing() when splashScreenInitializing != null:
return splashScreenInitializing(_that);case SplashScreenInitialized() when splashScreenInitialized != null:
return splashScreenInitialized(_that);case SplashScreenFailed() when splashScreenFailed != null:
return splashScreenFailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SplashScreenInitial value)  splashScreenInitial,required TResult Function( SplashScreenInitializing value)  splashScreenInitializing,required TResult Function( SplashScreenInitialized value)  splashScreenInitialized,required TResult Function( SplashScreenFailed value)  splashScreenFailed,}){
final _that = this;
switch (_that) {
case SplashScreenInitial():
return splashScreenInitial(_that);case SplashScreenInitializing():
return splashScreenInitializing(_that);case SplashScreenInitialized():
return splashScreenInitialized(_that);case SplashScreenFailed():
return splashScreenFailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SplashScreenInitial value)?  splashScreenInitial,TResult? Function( SplashScreenInitializing value)?  splashScreenInitializing,TResult? Function( SplashScreenInitialized value)?  splashScreenInitialized,TResult? Function( SplashScreenFailed value)?  splashScreenFailed,}){
final _that = this;
switch (_that) {
case SplashScreenInitial() when splashScreenInitial != null:
return splashScreenInitial(_that);case SplashScreenInitializing() when splashScreenInitializing != null:
return splashScreenInitializing(_that);case SplashScreenInitialized() when splashScreenInitialized != null:
return splashScreenInitialized(_that);case SplashScreenFailed() when splashScreenFailed != null:
return splashScreenFailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  splashScreenInitial,TResult Function( double count)?  splashScreenInitializing,TResult Function()?  splashScreenInitialized,TResult Function( String errorMsg)?  splashScreenFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SplashScreenInitial() when splashScreenInitial != null:
return splashScreenInitial();case SplashScreenInitializing() when splashScreenInitializing != null:
return splashScreenInitializing(_that.count);case SplashScreenInitialized() when splashScreenInitialized != null:
return splashScreenInitialized();case SplashScreenFailed() when splashScreenFailed != null:
return splashScreenFailed(_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  splashScreenInitial,required TResult Function( double count)  splashScreenInitializing,required TResult Function()  splashScreenInitialized,required TResult Function( String errorMsg)  splashScreenFailed,}) {final _that = this;
switch (_that) {
case SplashScreenInitial():
return splashScreenInitial();case SplashScreenInitializing():
return splashScreenInitializing(_that.count);case SplashScreenInitialized():
return splashScreenInitialized();case SplashScreenFailed():
return splashScreenFailed(_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  splashScreenInitial,TResult? Function( double count)?  splashScreenInitializing,TResult? Function()?  splashScreenInitialized,TResult? Function( String errorMsg)?  splashScreenFailed,}) {final _that = this;
switch (_that) {
case SplashScreenInitial() when splashScreenInitial != null:
return splashScreenInitial();case SplashScreenInitializing() when splashScreenInitializing != null:
return splashScreenInitializing(_that.count);case SplashScreenInitialized() when splashScreenInitialized != null:
return splashScreenInitialized();case SplashScreenFailed() when splashScreenFailed != null:
return splashScreenFailed(_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class SplashScreenInitial implements SplashScreenState {
  const SplashScreenInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashScreenInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashScreenState.splashScreenInitial()';
}


}




/// @nodoc


class SplashScreenInitializing implements SplashScreenState {
  const SplashScreenInitializing({required this.count});
  

 final  double count;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashScreenInitializingCopyWith<SplashScreenInitializing> get copyWith => _$SplashScreenInitializingCopyWithImpl<SplashScreenInitializing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashScreenInitializing&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'SplashScreenState.splashScreenInitializing(count: $count)';
}


}

/// @nodoc
abstract mixin class $SplashScreenInitializingCopyWith<$Res> implements $SplashScreenStateCopyWith<$Res> {
  factory $SplashScreenInitializingCopyWith(SplashScreenInitializing value, $Res Function(SplashScreenInitializing) _then) = _$SplashScreenInitializingCopyWithImpl;
@useResult
$Res call({
 double count
});




}
/// @nodoc
class _$SplashScreenInitializingCopyWithImpl<$Res>
    implements $SplashScreenInitializingCopyWith<$Res> {
  _$SplashScreenInitializingCopyWithImpl(this._self, this._then);

  final SplashScreenInitializing _self;
  final $Res Function(SplashScreenInitializing) _then;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(SplashScreenInitializing(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class SplashScreenInitialized implements SplashScreenState {
  const SplashScreenInitialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashScreenInitialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashScreenState.splashScreenInitialized()';
}


}




/// @nodoc


class SplashScreenFailed implements SplashScreenState {
  const SplashScreenFailed({required this.errorMsg});
  

 final  String errorMsg;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashScreenFailedCopyWith<SplashScreenFailed> get copyWith => _$SplashScreenFailedCopyWithImpl<SplashScreenFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashScreenFailed&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,errorMsg);

@override
String toString() {
  return 'SplashScreenState.splashScreenFailed(errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $SplashScreenFailedCopyWith<$Res> implements $SplashScreenStateCopyWith<$Res> {
  factory $SplashScreenFailedCopyWith(SplashScreenFailed value, $Res Function(SplashScreenFailed) _then) = _$SplashScreenFailedCopyWithImpl;
@useResult
$Res call({
 String errorMsg
});




}
/// @nodoc
class _$SplashScreenFailedCopyWithImpl<$Res>
    implements $SplashScreenFailedCopyWith<$Res> {
  _$SplashScreenFailedCopyWithImpl(this._self, this._then);

  final SplashScreenFailed _self;
  final $Res Function(SplashScreenFailed) _then;

/// Create a copy of SplashScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMsg = null,}) {
  return _then(SplashScreenFailed(
errorMsg: null == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
