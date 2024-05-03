import 'package:air_tickets/features/tickets/data/dto/music_offer_dto.dart';

abstract interface class ITicketsRepository{
  Future<List<MusicOfferDto>> getMusicOffer();
}
