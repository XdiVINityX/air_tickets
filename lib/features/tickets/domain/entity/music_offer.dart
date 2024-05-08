import 'package:air_tickets/features/tickets/data/dto/music_offer_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'music_offer.freezed.dart';

@freezed
class MusicOffer with _$MusicOffer {
  const factory MusicOffer({
    required List<Offer> offers,
  }) = _MusicOffer;

  factory MusicOffer.fromDto(MusicOfferDto dto) =>
      MusicOffer(offers: dto.offers.map(Offer.fromDto).toList());
}

@freezed
class Offer with _$Offer {
  const factory Offer({
    required int id,
    required String title,
    required String town,
    required Price price,
  }) = _Offer;

  factory Offer.fromDto(OfferDto dto) => Offer(
        id: dto.id,
        title: dto.title,
        town: dto.town,
        price: Price.fromDto(dto.price),
      );
}

@freezed
class Price with _$Price {
  const factory Price({
    required int value,
  }) = _Price;

  factory Price.fromDto(PriceDto dto) => Price(value: dto.value);
}
