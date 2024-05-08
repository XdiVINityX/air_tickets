import 'package:air_tickets/features/tickets/data/dto/music_offer_dto.dart';

abstract interface class ITicketsApiProvider{
  Future<MusicOfferDto> getMusicOffer();
}
