// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoritesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesState()';
}


}

/// @nodoc
class $FavoritesStateCopyWith<$Res>  {
$FavoritesStateCopyWith(FavoritesState _, $Res Function(FavoritesState) __);
}


/// Adds pattern-matching-related methods to [FavoritesState].
extension FavoritesStatePatterns on FavoritesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FavoritesInitial value)?  favoritesInitial,TResult Function( FavoritesStateChanged value)?  favoritesStateChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FavoritesInitial() when favoritesInitial != null:
return favoritesInitial(_that);case FavoritesStateChanged() when favoritesStateChanged != null:
return favoritesStateChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FavoritesInitial value)  favoritesInitial,required TResult Function( FavoritesStateChanged value)  favoritesStateChanged,}){
final _that = this;
switch (_that) {
case FavoritesInitial():
return favoritesInitial(_that);case FavoritesStateChanged():
return favoritesStateChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FavoritesInitial value)?  favoritesInitial,TResult? Function( FavoritesStateChanged value)?  favoritesStateChanged,}){
final _that = this;
switch (_that) {
case FavoritesInitial() when favoritesInitial != null:
return favoritesInitial(_that);case FavoritesStateChanged() when favoritesStateChanged != null:
return favoritesStateChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  favoritesInitial,TResult Function( PokemonItemData pokemon)?  favoritesStateChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FavoritesInitial() when favoritesInitial != null:
return favoritesInitial();case FavoritesStateChanged() when favoritesStateChanged != null:
return favoritesStateChanged(_that.pokemon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  favoritesInitial,required TResult Function( PokemonItemData pokemon)  favoritesStateChanged,}) {final _that = this;
switch (_that) {
case FavoritesInitial():
return favoritesInitial();case FavoritesStateChanged():
return favoritesStateChanged(_that.pokemon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  favoritesInitial,TResult? Function( PokemonItemData pokemon)?  favoritesStateChanged,}) {final _that = this;
switch (_that) {
case FavoritesInitial() when favoritesInitial != null:
return favoritesInitial();case FavoritesStateChanged() when favoritesStateChanged != null:
return favoritesStateChanged(_that.pokemon);case _:
  return null;

}
}

}

/// @nodoc


class FavoritesInitial implements FavoritesState {
  const FavoritesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesState.favoritesInitial()';
}


}




/// @nodoc


class FavoritesStateChanged implements FavoritesState {
  const FavoritesStateChanged({required this.pokemon});
  

 final  PokemonItemData pokemon;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesStateChangedCopyWith<FavoritesStateChanged> get copyWith => _$FavoritesStateChangedCopyWithImpl<FavoritesStateChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesStateChanged&&(identical(other.pokemon, pokemon) || other.pokemon == pokemon));
}


@override
int get hashCode => Object.hash(runtimeType,pokemon);

@override
String toString() {
  return 'FavoritesState.favoritesStateChanged(pokemon: $pokemon)';
}


}

/// @nodoc
abstract mixin class $FavoritesStateChangedCopyWith<$Res> implements $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateChangedCopyWith(FavoritesStateChanged value, $Res Function(FavoritesStateChanged) _then) = _$FavoritesStateChangedCopyWithImpl;
@useResult
$Res call({
 PokemonItemData pokemon
});




}
/// @nodoc
class _$FavoritesStateChangedCopyWithImpl<$Res>
    implements $FavoritesStateChangedCopyWith<$Res> {
  _$FavoritesStateChangedCopyWithImpl(this._self, this._then);

  final FavoritesStateChanged _self;
  final $Res Function(FavoritesStateChanged) _then;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pokemon = null,}) {
  return _then(FavoritesStateChanged(
pokemon: null == pokemon ? _self.pokemon : pokemon // ignore: cast_nullable_to_non_nullable
as PokemonItemData,
  ));
}


}

// dart format on
