// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PokemonListState()';
}


}

/// @nodoc
class $PokemonListStateCopyWith<$Res>  {
$PokemonListStateCopyWith(PokemonListState _, $Res Function(PokemonListState) __);
}


/// Adds pattern-matching-related methods to [PokemonListState].
extension PokemonListStatePatterns on PokemonListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PokemonListInitial value)?  pokemonListInitial,TResult Function( PokemonListInitialized value)?  pokemonListInitialized,TResult Function( PokemonListFiltered value)?  pokemonListFiltered,TResult Function( PokemonListError value)?  pokemonListError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PokemonListInitial() when pokemonListInitial != null:
return pokemonListInitial(_that);case PokemonListInitialized() when pokemonListInitialized != null:
return pokemonListInitialized(_that);case PokemonListFiltered() when pokemonListFiltered != null:
return pokemonListFiltered(_that);case PokemonListError() when pokemonListError != null:
return pokemonListError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PokemonListInitial value)  pokemonListInitial,required TResult Function( PokemonListInitialized value)  pokemonListInitialized,required TResult Function( PokemonListFiltered value)  pokemonListFiltered,required TResult Function( PokemonListError value)  pokemonListError,}){
final _that = this;
switch (_that) {
case PokemonListInitial():
return pokemonListInitial(_that);case PokemonListInitialized():
return pokemonListInitialized(_that);case PokemonListFiltered():
return pokemonListFiltered(_that);case PokemonListError():
return pokemonListError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PokemonListInitial value)?  pokemonListInitial,TResult? Function( PokemonListInitialized value)?  pokemonListInitialized,TResult? Function( PokemonListFiltered value)?  pokemonListFiltered,TResult? Function( PokemonListError value)?  pokemonListError,}){
final _that = this;
switch (_that) {
case PokemonListInitial() when pokemonListInitial != null:
return pokemonListInitial(_that);case PokemonListInitialized() when pokemonListInitialized != null:
return pokemonListInitialized(_that);case PokemonListFiltered() when pokemonListFiltered != null:
return pokemonListFiltered(_that);case PokemonListError() when pokemonListError != null:
return pokemonListError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  pokemonListInitial,TResult Function( List<PokemonItemData> pokemons)?  pokemonListInitialized,TResult Function( List<PokemonItemData> pokemons)?  pokemonListFiltered,TResult Function( String errorMsg)?  pokemonListError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PokemonListInitial() when pokemonListInitial != null:
return pokemonListInitial();case PokemonListInitialized() when pokemonListInitialized != null:
return pokemonListInitialized(_that.pokemons);case PokemonListFiltered() when pokemonListFiltered != null:
return pokemonListFiltered(_that.pokemons);case PokemonListError() when pokemonListError != null:
return pokemonListError(_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  pokemonListInitial,required TResult Function( List<PokemonItemData> pokemons)  pokemonListInitialized,required TResult Function( List<PokemonItemData> pokemons)  pokemonListFiltered,required TResult Function( String errorMsg)  pokemonListError,}) {final _that = this;
switch (_that) {
case PokemonListInitial():
return pokemonListInitial();case PokemonListInitialized():
return pokemonListInitialized(_that.pokemons);case PokemonListFiltered():
return pokemonListFiltered(_that.pokemons);case PokemonListError():
return pokemonListError(_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  pokemonListInitial,TResult? Function( List<PokemonItemData> pokemons)?  pokemonListInitialized,TResult? Function( List<PokemonItemData> pokemons)?  pokemonListFiltered,TResult? Function( String errorMsg)?  pokemonListError,}) {final _that = this;
switch (_that) {
case PokemonListInitial() when pokemonListInitial != null:
return pokemonListInitial();case PokemonListInitialized() when pokemonListInitialized != null:
return pokemonListInitialized(_that.pokemons);case PokemonListFiltered() when pokemonListFiltered != null:
return pokemonListFiltered(_that.pokemons);case PokemonListError() when pokemonListError != null:
return pokemonListError(_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class PokemonListInitial implements PokemonListState {
  const PokemonListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PokemonListState.pokemonListInitial()';
}


}




/// @nodoc


class PokemonListInitialized implements PokemonListState {
  const PokemonListInitialized({required final  List<PokemonItemData> pokemons}): _pokemons = pokemons;
  

 final  List<PokemonItemData> _pokemons;
 List<PokemonItemData> get pokemons {
  if (_pokemons is EqualUnmodifiableListView) return _pokemons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pokemons);
}


/// Create a copy of PokemonListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonListInitializedCopyWith<PokemonListInitialized> get copyWith => _$PokemonListInitializedCopyWithImpl<PokemonListInitialized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonListInitialized&&const DeepCollectionEquality().equals(other._pokemons, _pokemons));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_pokemons));

@override
String toString() {
  return 'PokemonListState.pokemonListInitialized(pokemons: $pokemons)';
}


}

/// @nodoc
abstract mixin class $PokemonListInitializedCopyWith<$Res> implements $PokemonListStateCopyWith<$Res> {
  factory $PokemonListInitializedCopyWith(PokemonListInitialized value, $Res Function(PokemonListInitialized) _then) = _$PokemonListInitializedCopyWithImpl;
@useResult
$Res call({
 List<PokemonItemData> pokemons
});




}
/// @nodoc
class _$PokemonListInitializedCopyWithImpl<$Res>
    implements $PokemonListInitializedCopyWith<$Res> {
  _$PokemonListInitializedCopyWithImpl(this._self, this._then);

  final PokemonListInitialized _self;
  final $Res Function(PokemonListInitialized) _then;

/// Create a copy of PokemonListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pokemons = null,}) {
  return _then(PokemonListInitialized(
pokemons: null == pokemons ? _self._pokemons : pokemons // ignore: cast_nullable_to_non_nullable
as List<PokemonItemData>,
  ));
}


}

/// @nodoc


class PokemonListFiltered implements PokemonListState {
  const PokemonListFiltered({required final  List<PokemonItemData> pokemons}): _pokemons = pokemons;
  

 final  List<PokemonItemData> _pokemons;
 List<PokemonItemData> get pokemons {
  if (_pokemons is EqualUnmodifiableListView) return _pokemons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pokemons);
}


/// Create a copy of PokemonListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonListFilteredCopyWith<PokemonListFiltered> get copyWith => _$PokemonListFilteredCopyWithImpl<PokemonListFiltered>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonListFiltered&&const DeepCollectionEquality().equals(other._pokemons, _pokemons));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_pokemons));

@override
String toString() {
  return 'PokemonListState.pokemonListFiltered(pokemons: $pokemons)';
}


}

/// @nodoc
abstract mixin class $PokemonListFilteredCopyWith<$Res> implements $PokemonListStateCopyWith<$Res> {
  factory $PokemonListFilteredCopyWith(PokemonListFiltered value, $Res Function(PokemonListFiltered) _then) = _$PokemonListFilteredCopyWithImpl;
@useResult
$Res call({
 List<PokemonItemData> pokemons
});




}
/// @nodoc
class _$PokemonListFilteredCopyWithImpl<$Res>
    implements $PokemonListFilteredCopyWith<$Res> {
  _$PokemonListFilteredCopyWithImpl(this._self, this._then);

  final PokemonListFiltered _self;
  final $Res Function(PokemonListFiltered) _then;

/// Create a copy of PokemonListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pokemons = null,}) {
  return _then(PokemonListFiltered(
pokemons: null == pokemons ? _self._pokemons : pokemons // ignore: cast_nullable_to_non_nullable
as List<PokemonItemData>,
  ));
}


}

/// @nodoc


class PokemonListError implements PokemonListState {
  const PokemonListError({required this.errorMsg});
  

 final  String errorMsg;

/// Create a copy of PokemonListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonListErrorCopyWith<PokemonListError> get copyWith => _$PokemonListErrorCopyWithImpl<PokemonListError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonListError&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,errorMsg);

@override
String toString() {
  return 'PokemonListState.pokemonListError(errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $PokemonListErrorCopyWith<$Res> implements $PokemonListStateCopyWith<$Res> {
  factory $PokemonListErrorCopyWith(PokemonListError value, $Res Function(PokemonListError) _then) = _$PokemonListErrorCopyWithImpl;
@useResult
$Res call({
 String errorMsg
});




}
/// @nodoc
class _$PokemonListErrorCopyWithImpl<$Res>
    implements $PokemonListErrorCopyWith<$Res> {
  _$PokemonListErrorCopyWithImpl(this._self, this._then);

  final PokemonListError _self;
  final $Res Function(PokemonListError) _then;

/// Create a copy of PokemonListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMsg = null,}) {
  return _then(PokemonListError(
errorMsg: null == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
