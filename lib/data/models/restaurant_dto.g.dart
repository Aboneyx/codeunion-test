// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantDTO _$$_RestaurantDTOFromJson(Map<String, dynamic> json) =>
    _$_RestaurantDTO(
      id: json['id'] as int,
      isFavorite: json['is_favourite'] as bool,
      title: json['title'] as String?,
      description: json['description'] as String?,
      schedule: json['schedule'] == null
          ? null
          : ScheduleDTO.fromJson(json['schedule'] as Map<String, dynamic>),
      coords: json['coords'] == null
          ? null
          : CoordDTO.fromJson(json['coords'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RestaurantDTOToJson(_$_RestaurantDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_favourite': instance.isFavorite,
      'title': instance.title,
      'description': instance.description,
      'schedule': instance.schedule,
      'coords': instance.coords,
      'images': instance.images,
    };

_$_ScheduleDTO _$$_ScheduleDTOFromJson(Map<String, dynamic> json) =>
    _$_ScheduleDTO(
      id: json['id'] as int,
      opening: json['opening'] as String?,
      closing: json['closing'] as String?,
    );

Map<String, dynamic> _$$_ScheduleDTOToJson(_$_ScheduleDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'opening': instance.opening,
      'closing': instance.closing,
    };

_$_CoordDTO _$$_CoordDTOFromJson(Map<String, dynamic> json) => _$_CoordDTO(
      id: json['id'] as int,
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      addressName: json['address_name'] as String?,
    );

Map<String, dynamic> _$$_CoordDTOToJson(_$_CoordDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'address_name': instance.addressName,
    };

_$_ImageDTO _$$_ImageDTOFromJson(Map<String, dynamic> json) => _$_ImageDTO(
      id: json['id'] as int,
      url: json['url'] as String,
      restaurantId: json['restaurant_id'] as int?,
    );

Map<String, dynamic> _$$_ImageDTOToJson(_$_ImageDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'restaurant_id': instance.restaurantId,
    };
