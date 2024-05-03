import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_offer_dto.g.dart';

@JsonSerializable()
class MusicOfferDto {
  MusicOfferDto({
    required this.offers,
  });

  factory MusicOfferDto.fromJson(Map<String, dynamic> json) =>
      _$MusicOfferDtoFromJson(json);

  final List<Offer> offers;

  Map<String, dynamic> toJson() => _$MusicOfferDtoToJson(this);
}

@JsonSerializable()
class Offer {
  Offer({
    required this.id,
    required this.title,
    required this.town,
    required this.price,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
  final int id;
  final String title;
  final String town;
  final Price price;

  Map<String, dynamic> toJson() => _$OfferToJson(this);
}

@JsonSerializable()
class Price {
  Price({
    required this.value,
  });

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
  final int value;

  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
