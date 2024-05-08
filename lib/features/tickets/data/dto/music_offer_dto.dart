import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_offer_dto.g.dart';

@JsonSerializable()
class MusicOfferDto {
  MusicOfferDto({
    required this.offers,
  });

  factory MusicOfferDto.fromJson(Map<String, dynamic> json) =>
      _$MusicOfferDtoFromJson(json);

  final List<OfferDto> offers;

  Map<String, dynamic> toJson() => _$MusicOfferDtoToJson(this);
}

@JsonSerializable()
class OfferDto {
  OfferDto({
    required this.id,
    required this.title,
    required this.town,
    required this.price,
  });

  factory OfferDto.fromJson(Map<String, dynamic> json) => _$OfferDtoFromJson(json);
  final int id;
  final String title;
  final String town;
  final PriceDto price;

  Map<String, dynamic> toJson() => _$OfferDtoToJson(this);
}

@JsonSerializable()
class PriceDto {
  PriceDto({
    required this.value,
  });

  factory PriceDto.fromJson(Map<String, dynamic> json) => _$PriceDtoFromJson(json);
  final int value;

  Map<String, dynamic> toJson() => _$PriceDtoToJson(this);
}
