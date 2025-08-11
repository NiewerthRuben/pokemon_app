// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeScreenState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeScreenState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeScreenState()';
}


}

/// @nodoc
class $HomeScreenStateCopyWith<$Res>  {
$HomeScreenStateCopyWith(HomeScreenState _, $Res Function(HomeScreenState) __);
}


/// Adds pattern-matching-related methods to [HomeScreenState].
extension HomeScreenStatePatterns on HomeScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeScreenInitial value)?  homeScreenInitial,TResult Function( HomeScreenGoToDetailsPage value)?  homeScreenGoToDetailsPage,TResult Function( HomeScreenGoToListPage value)?  homeScreenGoToListPage,TResult Function( HomeScreenError value)?  homeScreenError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeScreenInitial() when homeScreenInitial != null:
return homeScreenInitial(_that);case HomeScreenGoToDetailsPage() when homeScreenGoToDetailsPage != null:
return homeScreenGoToDetailsPage(_that);case HomeScreenGoToListPage() when homeScreenGoToListPage != null:
return homeScreenGoToListPage(_that);case HomeScreenError() when homeScreenError != null:
return homeScreenError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeScreenInitial value)  homeScreenInitial,required TResult Function( HomeScreenGoToDetailsPage value)  homeScreenGoToDetailsPage,required TResult Function( HomeScreenGoToListPage value)  homeScreenGoToListPage,required TResult Function( HomeScreenError value)  homeScreenError,}){
final _that = this;
switch (_that) {
case HomeScreenInitial():
return homeScreenInitial(_that);case HomeScreenGoToDetailsPage():
return homeScreenGoToDetailsPage(_that);case HomeScreenGoToListPage():
return homeScreenGoToListPage(_that);case HomeScreenError():
return homeScreenError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeScreenInitial value)?  homeScreenInitial,TResult? Function( HomeScreenGoToDetailsPage value)?  homeScreenGoToDetailsPage,TResult? Function( HomeScreenGoToListPage value)?  homeScreenGoToListPage,TResult? Function( HomeScreenError value)?  homeScreenError,}){
final _that = this;
switch (_that) {
case HomeScreenInitial() when homeScreenInitial != null:
return homeScreenInitial(_that);case HomeScreenGoToDetailsPage() when homeScreenGoToDetailsPage != null:
return homeScreenGoToDetailsPage(_that);case HomeScreenGoToListPage() when homeScreenGoToListPage != null:
return homeScreenGoToListPage(_that);case HomeScreenError() when homeScreenError != null:
return homeScreenError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  homeScreenInitial,TResult Function( PokemonItemData pokemonItemData)?  homeScreenGoToDetailsPage,TResult Function()?  homeScreenGoToListPage,TResult Function( String errorMsg)?  homeScreenError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeScreenInitial() when homeScreenInitial != null:
return homeScreenInitial();case HomeScreenGoToDetailsPage() when homeScreenGoToDetailsPage != null:
return homeScreenGoToDetailsPage(_that.pokemonItemData);case HomeScreenGoToListPage() when homeScreenGoToListPage != null:
return homeScreenGoToListPage();case HomeScreenError() when homeScreenError != null:
return homeScreenError(_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  homeScreenInitial,required TResult Function( PokemonItemData pokemonItemData)  homeScreenGoToDetailsPage,required TResult Function()  homeScreenGoToListPage,required TResult Function( String errorMsg)  homeScreenError,}) {final _that = this;
switch (_that) {
case HomeScreenInitial():
return homeScreenInitial();case HomeScreenGoToDetailsPage():
return homeScreenGoToDetailsPage(_that.pokemonItemData);case HomeScreenGoToListPage():
return homeScreenGoToListPage();case HomeScreenError():
return homeScreenError(_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  homeScreenInitial,TResult? Function( PokemonItemData pokemonItemData)?  homeScreenGoToDetailsPage,TResult? Function()?  homeScreenGoToListPage,TResult? Function( String errorMsg)?  homeScreenError,}) {final _that = this;
switch (_that) {
case HomeScreenInitial() when homeScreenInitial != null:
return homeScreenInitial();case HomeScreenGoToDetailsPage() when homeScreenGoToDetailsPage != null:
return homeScreenGoToDetailsPage(_that.pokemonItemData);case HomeScreenGoToListPage() when homeScreenGoToListPage != null:
return homeScreenGoToListPage();case HomeScreenError() when homeScreenError != null:
return homeScreenError(_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class HomeScreenInitial implements HomeScreenState {
  const HomeScreenInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeScreenInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeScreenState.homeScreenInitial()';
}


}




/// @nodoc


class HomeScreenGoToDetailsPage implements HomeScreenState {
  const HomeScreenGoToDetailsPage({required this.pokemonItemData});
  

 final  PokemonItemData pokemonItemData;

/// Create a copy of HomeScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeScreenGoToDetailsPageCopyWith<HomeScreenGoToDetailsPage> get copyWith => _$HomeScreenGoToDetailsPageCopyWithImpl<HomeScreenGoToDetailsPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeScreenGoToDetailsPage&&(identical(other.pokemonItemData, pokemonItemData) || other.pokemonItemData == pokemonItemData));
}


@override
int get hashCode => Object.hash(runtimeType,pokemonItemData);

@override
String toString() {
  return 'HomeScreenState.homeScreenGoToDetailsPage(pokemonItemData: $pokemonItemData)';
}


}

/// @nodoc
abstract mixin class $HomeScreenGoToDetailsPageCopyWith<$Res> implements $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenGoToDetailsPageCopyWith(HomeScreenGoToDetailsPage value, $Res Function(HomeScreenGoToDetailsPage) _then) = _$HomeScreenGoToDetailsPageCopyWithImpl;
@useResult
$Res call({
 PokemonItemData pokemonItemData
});




}
/// @nodoc
class _$HomeScreenGoToDetailsPageCopyWithImpl<$Res>
    implements $HomeScreenGoToDetailsPageCopyWith<$Res> {
  _$HomeScreenGoToDetailsPageCopyWithImpl(this._self, this._then);

  final HomeScreenGoToDetailsPage _self;
  final $Res Function(HomeScreenGoToDetailsPage) _then;

/// Create a copy of HomeScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pokemonItemData = null,}) {
  return _then(HomeScreenGoToDetailsPage(
pokemonItemData: null == pokemonItemData ? _self.pokemonItemData : pokemonItemData // ignore: cast_nullable_to_non_nullable
as PokemonItemData,
  ));
}


}

/// @nodoc


class HomeScreenGoToListPage implements HomeScreenState {
  const HomeScreenGoToListPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeScreenGoToListPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeScreenState.homeScreenGoToListPage()';
}


}




/// @nodoc


class HomeScreenError implements HomeScreenState {
  const HomeScreenError({required this.errorMsg});
  

 final  String errorMsg;

/// Create a copy of HomeScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeScreenErrorCopyWith<HomeScreenError> get copyWith => _$HomeScreenErrorCopyWithImpl<HomeScreenError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeScreenError&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,errorMsg);

@override
String toString() {
  return 'HomeScreenState.homeScreenError(errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $HomeScreenErrorCopyWith<$Res> implements $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenErrorCopyWith(HomeScreenError value, $Res Function(HomeScreenError) _then) = _$HomeScreenErrorCopyWithImpl;
@useResult
$Res call({
 String errorMsg
});




}
/// @nodoc
class _$HomeScreenErrorCopyWithImpl<$Res>
    implements $HomeScreenErrorCopyWith<$Res> {
  _$HomeScreenErrorCopyWithImpl(this._self, this._then);

  final HomeScreenError _self;
  final $Res Function(HomeScreenError) _then;

/// Create a copy of HomeScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMsg = null,}) {
  return _then(HomeScreenError(
errorMsg: null == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
