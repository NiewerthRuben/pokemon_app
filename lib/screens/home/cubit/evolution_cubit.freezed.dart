// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EvolutionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EvolutionState()';
}


}

/// @nodoc
class $EvolutionStateCopyWith<$Res>  {
$EvolutionStateCopyWith(EvolutionState _, $Res Function(EvolutionState) __);
}


/// Adds pattern-matching-related methods to [EvolutionState].
extension EvolutionStatePatterns on EvolutionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EvolitionInitial value)?  initial,TResult Function( EvolutionLoading value)?  loading,TResult Function( EvolutionLoaded value)?  loaded,TResult Function( EvolutionFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EvolitionInitial() when initial != null:
return initial(_that);case EvolutionLoading() when loading != null:
return loading(_that);case EvolutionLoaded() when loaded != null:
return loaded(_that);case EvolutionFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EvolitionInitial value)  initial,required TResult Function( EvolutionLoading value)  loading,required TResult Function( EvolutionLoaded value)  loaded,required TResult Function( EvolutionFailure value)  failure,}){
final _that = this;
switch (_that) {
case EvolitionInitial():
return initial(_that);case EvolutionLoading():
return loading(_that);case EvolutionLoaded():
return loaded(_that);case EvolutionFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EvolitionInitial value)?  initial,TResult? Function( EvolutionLoading value)?  loading,TResult? Function( EvolutionLoaded value)?  loaded,TResult? Function( EvolutionFailure value)?  failure,}){
final _that = this;
switch (_that) {
case EvolitionInitial() when initial != null:
return initial(_that);case EvolutionLoading() when loading != null:
return loading(_that);case EvolutionLoaded() when loaded != null:
return loaded(_that);case EvolutionFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<PokemonItemData> stages)?  loaded,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EvolitionInitial() when initial != null:
return initial();case EvolutionLoading() when loading != null:
return loading();case EvolutionLoaded() when loaded != null:
return loaded(_that.stages);case EvolutionFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<PokemonItemData> stages)  loaded,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case EvolitionInitial():
return initial();case EvolutionLoading():
return loading();case EvolutionLoaded():
return loaded(_that.stages);case EvolutionFailure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<PokemonItemData> stages)?  loaded,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case EvolitionInitial() when initial != null:
return initial();case EvolutionLoading() when loading != null:
return loading();case EvolutionLoaded() when loaded != null:
return loaded(_that.stages);case EvolutionFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class EvolitionInitial implements EvolutionState {
  const EvolitionInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolitionInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EvolutionState.initial()';
}


}




/// @nodoc


class EvolutionLoading implements EvolutionState {
  const EvolutionLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EvolutionState.loading()';
}


}




/// @nodoc


class EvolutionLoaded implements EvolutionState {
  const EvolutionLoaded({required final  List<PokemonItemData> stages}): _stages = stages;
  

 final  List<PokemonItemData> _stages;
 List<PokemonItemData> get stages {
  if (_stages is EqualUnmodifiableListView) return _stages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stages);
}


/// Create a copy of EvolutionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<EvolutionLoaded> get copyWith => __$LoadedCopyWithImpl<EvolutionLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionLoaded&&const DeepCollectionEquality().equals(other._stages, _stages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stages));

@override
String toString() {
  return 'EvolutionState.loaded(stages: $stages)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $EvolutionStateCopyWith<$Res> {
  factory _$LoadedCopyWith(EvolutionLoaded value, $Res Function(EvolutionLoaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<PokemonItemData> stages
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final EvolutionLoaded _self;
  final $Res Function(EvolutionLoaded) _then;

/// Create a copy of EvolutionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stages = null,}) {
  return _then(EvolutionLoaded(
stages: null == stages ? _self._stages : stages // ignore: cast_nullable_to_non_nullable
as List<PokemonItemData>,
  ));
}


}

/// @nodoc


class EvolutionFailure implements EvolutionState {
  const EvolutionFailure({required this.message});
  

 final  String message;

/// Create a copy of EvolutionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<EvolutionFailure> get copyWith => __$FailureCopyWithImpl<EvolutionFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'EvolutionState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $EvolutionStateCopyWith<$Res> {
  factory _$FailureCopyWith(EvolutionFailure value, $Res Function(EvolutionFailure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final EvolutionFailure _self;
  final $Res Function(EvolutionFailure) _then;

/// Create a copy of EvolutionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(EvolutionFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
