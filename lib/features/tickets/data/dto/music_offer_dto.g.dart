// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MusicOfferDto _$MusicOfferDtoFromJson(Map<String, dynamic> json) =>
    MusicOfferDto(
      offers: (json['offers'] as List<dynamic>)
          .map((e) => OfferDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MusicOfferDtoToJson(MusicOfferDto instance) =>
    <String, dynamic>{
      'offers': instance.offers,
    };

OfferDto _$OfferDtoFromJson(Map<String, dynamic> json) => OfferDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      town: json['town'] as String,
      price: PriceDto.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfferDtoToJson(OfferDto instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'town': instance.town,
      'price': instance.price,
    };

PriceDto _$PriceDtoFromJson(Map<String, dynamic> json) => PriceDto(
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$PriceDtoToJson(PriceDto instance) => <String, dynamic>{
      'value': instance.value,
    };
