// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_dto.g.dart';
part 'restaurant_dto.freezed.dart';

@freezed
class RestaurantDTO with _$RestaurantDTO {
  const factory RestaurantDTO({
    required int id,
    @JsonKey(name: 'is_favourite') required bool isFavorite,
    String? title,
    String? description,
    ScheduleDTO? schedule,
    CoordDTO? coords,
    List<ImageDTO>? images,
  }) = _RestaurantDTO;

  factory RestaurantDTO.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDTOFromJson(json);
}

@freezed
class ScheduleDTO with _$ScheduleDTO {
  const factory ScheduleDTO({
    required int id,
    String? opening,
    String? closing,
  }) = _ScheduleDTO;

  factory ScheduleDTO.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDTOFromJson(json);
}

@freezed
class CoordDTO with _$CoordDTO {
  const factory CoordDTO({
    required int id,
    double? longitude,
    double? latitude,
    @JsonKey(name: 'address_name') String? addressName,
  }) = _CoordDTO;

  factory CoordDTO.fromJson(Map<String, dynamic> json) =>
      _$CoordDTOFromJson(json);
}

@freezed
class ImageDTO with _$ImageDTO {
  const factory ImageDTO({
    required int id,
    required String url,
    @JsonKey(name: 'restaurant_id') int? restaurantId,
  }) = _ImageDTO;

  factory ImageDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageDTOFromJson(json);
}
