// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantDTO _$RestaurantDTOFromJson(Map<String, dynamic> json) {
  return _RestaurantDTO.fromJson(json);
}

/// @nodoc
mixin _$RestaurantDTO {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favourite')
  bool get isFavorite => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ScheduleDTO? get schedule => throw _privateConstructorUsedError;
  CoordDTO? get coords => throw _privateConstructorUsedError;
  List<ImageDTO>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantDTOCopyWith<RestaurantDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantDTOCopyWith<$Res> {
  factory $RestaurantDTOCopyWith(
          RestaurantDTO value, $Res Function(RestaurantDTO) then) =
      _$RestaurantDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'is_favourite') bool isFavorite,
      String? title,
      String? description,
      ScheduleDTO? schedule,
      CoordDTO? coords,
      List<ImageDTO>? images});

  $ScheduleDTOCopyWith<$Res>? get schedule;
  $CoordDTOCopyWith<$Res>? get coords;
}

/// @nodoc
class _$RestaurantDTOCopyWithImpl<$Res>
    implements $RestaurantDTOCopyWith<$Res> {
  _$RestaurantDTOCopyWithImpl(this._value, this._then);

  final RestaurantDTO _value;
  // ignore: unused_field
  final $Res Function(RestaurantDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isFavorite = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? schedule = freezed,
    Object? coords = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleDTO?,
      coords: coords == freezed
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as CoordDTO?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDTO>?,
    ));
  }

  @override
  $ScheduleDTOCopyWith<$Res>? get schedule {
    if (_value.schedule == null) {
      return null;
    }

    return $ScheduleDTOCopyWith<$Res>(_value.schedule!, (value) {
      return _then(_value.copyWith(schedule: value));
    });
  }

  @override
  $CoordDTOCopyWith<$Res>? get coords {
    if (_value.coords == null) {
      return null;
    }

    return $CoordDTOCopyWith<$Res>(_value.coords!, (value) {
      return _then(_value.copyWith(coords: value));
    });
  }
}

/// @nodoc
abstract class _$$_RestaurantDTOCopyWith<$Res>
    implements $RestaurantDTOCopyWith<$Res> {
  factory _$$_RestaurantDTOCopyWith(
          _$_RestaurantDTO value, $Res Function(_$_RestaurantDTO) then) =
      __$$_RestaurantDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'is_favourite') bool isFavorite,
      String? title,
      String? description,
      ScheduleDTO? schedule,
      CoordDTO? coords,
      List<ImageDTO>? images});

  @override
  $ScheduleDTOCopyWith<$Res>? get schedule;
  @override
  $CoordDTOCopyWith<$Res>? get coords;
}

/// @nodoc
class __$$_RestaurantDTOCopyWithImpl<$Res>
    extends _$RestaurantDTOCopyWithImpl<$Res>
    implements _$$_RestaurantDTOCopyWith<$Res> {
  __$$_RestaurantDTOCopyWithImpl(
      _$_RestaurantDTO _value, $Res Function(_$_RestaurantDTO) _then)
      : super(_value, (v) => _then(v as _$_RestaurantDTO));

  @override
  _$_RestaurantDTO get _value => super._value as _$_RestaurantDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? isFavorite = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? schedule = freezed,
    Object? coords = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_RestaurantDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleDTO?,
      coords: coords == freezed
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as CoordDTO?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantDTO implements _RestaurantDTO {
  const _$_RestaurantDTO(
      {required this.id,
      @JsonKey(name: 'is_favourite') required this.isFavorite,
      this.title,
      this.description,
      this.schedule,
      this.coords,
      final List<ImageDTO>? images})
      : _images = images;

  factory _$_RestaurantDTO.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantDTOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'is_favourite')
  final bool isFavorite;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final ScheduleDTO? schedule;
  @override
  final CoordDTO? coords;
  final List<ImageDTO>? _images;
  @override
  List<ImageDTO>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RestaurantDTO(id: $id, isFavorite: $isFavorite, title: $title, description: $description, schedule: $schedule, coords: $coords, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.schedule, schedule) &&
            const DeepCollectionEquality().equals(other.coords, coords) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isFavorite),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(schedule),
      const DeepCollectionEquality().hash(coords),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  _$$_RestaurantDTOCopyWith<_$_RestaurantDTO> get copyWith =>
      __$$_RestaurantDTOCopyWithImpl<_$_RestaurantDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantDTOToJson(this);
  }
}

abstract class _RestaurantDTO implements RestaurantDTO {
  const factory _RestaurantDTO(
      {required final int id,
      @JsonKey(name: 'is_favourite') required final bool isFavorite,
      final String? title,
      final String? description,
      final ScheduleDTO? schedule,
      final CoordDTO? coords,
      final List<ImageDTO>? images}) = _$_RestaurantDTO;

  factory _RestaurantDTO.fromJson(Map<String, dynamic> json) =
      _$_RestaurantDTO.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_favourite')
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  ScheduleDTO? get schedule => throw _privateConstructorUsedError;
  @override
  CoordDTO? get coords => throw _privateConstructorUsedError;
  @override
  List<ImageDTO>? get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantDTOCopyWith<_$_RestaurantDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleDTO _$ScheduleDTOFromJson(Map<String, dynamic> json) {
  return _ScheduleDTO.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDTO {
  int get id => throw _privateConstructorUsedError;
  String? get opening => throw _privateConstructorUsedError;
  String? get closing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDTOCopyWith<ScheduleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDTOCopyWith<$Res> {
  factory $ScheduleDTOCopyWith(
          ScheduleDTO value, $Res Function(ScheduleDTO) then) =
      _$ScheduleDTOCopyWithImpl<$Res>;
  $Res call({int id, String? opening, String? closing});
}

/// @nodoc
class _$ScheduleDTOCopyWithImpl<$Res> implements $ScheduleDTOCopyWith<$Res> {
  _$ScheduleDTOCopyWithImpl(this._value, this._then);

  final ScheduleDTO _value;
  // ignore: unused_field
  final $Res Function(ScheduleDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? opening = freezed,
    Object? closing = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      opening: opening == freezed
          ? _value.opening
          : opening // ignore: cast_nullable_to_non_nullable
              as String?,
      closing: closing == freezed
          ? _value.closing
          : closing // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleDTOCopyWith<$Res>
    implements $ScheduleDTOCopyWith<$Res> {
  factory _$$_ScheduleDTOCopyWith(
          _$_ScheduleDTO value, $Res Function(_$_ScheduleDTO) then) =
      __$$_ScheduleDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? opening, String? closing});
}

/// @nodoc
class __$$_ScheduleDTOCopyWithImpl<$Res> extends _$ScheduleDTOCopyWithImpl<$Res>
    implements _$$_ScheduleDTOCopyWith<$Res> {
  __$$_ScheduleDTOCopyWithImpl(
      _$_ScheduleDTO _value, $Res Function(_$_ScheduleDTO) _then)
      : super(_value, (v) => _then(v as _$_ScheduleDTO));

  @override
  _$_ScheduleDTO get _value => super._value as _$_ScheduleDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? opening = freezed,
    Object? closing = freezed,
  }) {
    return _then(_$_ScheduleDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      opening: opening == freezed
          ? _value.opening
          : opening // ignore: cast_nullable_to_non_nullable
              as String?,
      closing: closing == freezed
          ? _value.closing
          : closing // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDTO implements _ScheduleDTO {
  const _$_ScheduleDTO({required this.id, this.opening, this.closing});

  factory _$_ScheduleDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDTOFromJson(json);

  @override
  final int id;
  @override
  final String? opening;
  @override
  final String? closing;

  @override
  String toString() {
    return 'ScheduleDTO(id: $id, opening: $opening, closing: $closing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.opening, opening) &&
            const DeepCollectionEquality().equals(other.closing, closing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(opening),
      const DeepCollectionEquality().hash(closing));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleDTOCopyWith<_$_ScheduleDTO> get copyWith =>
      __$$_ScheduleDTOCopyWithImpl<_$_ScheduleDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDTOToJson(this);
  }
}

abstract class _ScheduleDTO implements ScheduleDTO {
  const factory _ScheduleDTO(
      {required final int id,
      final String? opening,
      final String? closing}) = _$_ScheduleDTO;

  factory _ScheduleDTO.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDTO.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get opening => throw _privateConstructorUsedError;
  @override
  String? get closing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDTOCopyWith<_$_ScheduleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CoordDTO _$CoordDTOFromJson(Map<String, dynamic> json) {
  return _CoordDTO.fromJson(json);
}

/// @nodoc
mixin _$CoordDTO {
  int get id => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_name')
  String? get addressName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordDTOCopyWith<CoordDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordDTOCopyWith<$Res> {
  factory $CoordDTOCopyWith(CoordDTO value, $Res Function(CoordDTO) then) =
      _$CoordDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      double? longitude,
      double? latitude,
      @JsonKey(name: 'address_name') String? addressName});
}

/// @nodoc
class _$CoordDTOCopyWithImpl<$Res> implements $CoordDTOCopyWith<$Res> {
  _$CoordDTOCopyWithImpl(this._value, this._then);

  final CoordDTO _value;
  // ignore: unused_field
  final $Res Function(CoordDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? addressName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      addressName: addressName == freezed
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CoordDTOCopyWith<$Res> implements $CoordDTOCopyWith<$Res> {
  factory _$$_CoordDTOCopyWith(
          _$_CoordDTO value, $Res Function(_$_CoordDTO) then) =
      __$$_CoordDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      double? longitude,
      double? latitude,
      @JsonKey(name: 'address_name') String? addressName});
}

/// @nodoc
class __$$_CoordDTOCopyWithImpl<$Res> extends _$CoordDTOCopyWithImpl<$Res>
    implements _$$_CoordDTOCopyWith<$Res> {
  __$$_CoordDTOCopyWithImpl(
      _$_CoordDTO _value, $Res Function(_$_CoordDTO) _then)
      : super(_value, (v) => _then(v as _$_CoordDTO));

  @override
  _$_CoordDTO get _value => super._value as _$_CoordDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? addressName = freezed,
  }) {
    return _then(_$_CoordDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      addressName: addressName == freezed
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoordDTO implements _CoordDTO {
  const _$_CoordDTO(
      {required this.id,
      this.longitude,
      this.latitude,
      @JsonKey(name: 'address_name') this.addressName});

  factory _$_CoordDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CoordDTOFromJson(json);

  @override
  final int id;
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  @JsonKey(name: 'address_name')
  final String? addressName;

  @override
  String toString() {
    return 'CoordDTO(id: $id, longitude: $longitude, latitude: $latitude, addressName: $addressName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoordDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality()
                .equals(other.addressName, addressName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(addressName));

  @JsonKey(ignore: true)
  @override
  _$$_CoordDTOCopyWith<_$_CoordDTO> get copyWith =>
      __$$_CoordDTOCopyWithImpl<_$_CoordDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordDTOToJson(this);
  }
}

abstract class _CoordDTO implements CoordDTO {
  const factory _CoordDTO(
      {required final int id,
      final double? longitude,
      final double? latitude,
      @JsonKey(name: 'address_name') final String? addressName}) = _$_CoordDTO;

  factory _CoordDTO.fromJson(Map<String, dynamic> json) = _$_CoordDTO.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  double? get longitude => throw _privateConstructorUsedError;
  @override
  double? get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'address_name')
  String? get addressName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CoordDTOCopyWith<_$_CoordDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageDTO _$ImageDTOFromJson(Map<String, dynamic> json) {
  return _ImageDTO.fromJson(json);
}

/// @nodoc
mixin _$ImageDTO {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant_id')
  int? get restaurantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDTOCopyWith<ImageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDTOCopyWith<$Res> {
  factory $ImageDTOCopyWith(ImageDTO value, $Res Function(ImageDTO) then) =
      _$ImageDTOCopyWithImpl<$Res>;
  $Res call(
      {int id, String url, @JsonKey(name: 'restaurant_id') int? restaurantId});
}

/// @nodoc
class _$ImageDTOCopyWithImpl<$Res> implements $ImageDTOCopyWith<$Res> {
  _$ImageDTOCopyWithImpl(this._value, this._then);

  final ImageDTO _value;
  // ignore: unused_field
  final $Res Function(ImageDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? restaurantId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageDTOCopyWith<$Res> implements $ImageDTOCopyWith<$Res> {
  factory _$$_ImageDTOCopyWith(
          _$_ImageDTO value, $Res Function(_$_ImageDTO) then) =
      __$$_ImageDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String url, @JsonKey(name: 'restaurant_id') int? restaurantId});
}

/// @nodoc
class __$$_ImageDTOCopyWithImpl<$Res> extends _$ImageDTOCopyWithImpl<$Res>
    implements _$$_ImageDTOCopyWith<$Res> {
  __$$_ImageDTOCopyWithImpl(
      _$_ImageDTO _value, $Res Function(_$_ImageDTO) _then)
      : super(_value, (v) => _then(v as _$_ImageDTO));

  @override
  _$_ImageDTO get _value => super._value as _$_ImageDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? restaurantId = freezed,
  }) {
    return _then(_$_ImageDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageDTO implements _ImageDTO {
  const _$_ImageDTO(
      {required this.id,
      required this.url,
      @JsonKey(name: 'restaurant_id') this.restaurantId});

  factory _$_ImageDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ImageDTOFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  @JsonKey(name: 'restaurant_id')
  final int? restaurantId;

  @override
  String toString() {
    return 'ImageDTO(id: $id, url: $url, restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.restaurantId, restaurantId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(restaurantId));

  @JsonKey(ignore: true)
  @override
  _$$_ImageDTOCopyWith<_$_ImageDTO> get copyWith =>
      __$$_ImageDTOCopyWithImpl<_$_ImageDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageDTOToJson(this);
  }
}

abstract class _ImageDTO implements ImageDTO {
  const factory _ImageDTO(
      {required final int id,
      required final String url,
      @JsonKey(name: 'restaurant_id') final int? restaurantId}) = _$_ImageDTO;

  factory _ImageDTO.fromJson(Map<String, dynamic> json) = _$_ImageDTO.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'restaurant_id')
  int? get restaurantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ImageDTOCopyWith<_$_ImageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
