
import 'package:air_tickets/features/tickets/data/source/network/tickets_api_provider.dart';
import 'package:air_tickets/features/tickets/domain/entity/music_offer.dart';
import 'package:air_tickets/features/tickets/domain/repository/tickets_repository.dart';

class TicketsRepository implements ITicketsRepository{
  TicketsRepository({required ITicketsApiProvider apiProvider }) :
      _apiProvider = apiProvider;

  final ITicketsApiProvider _apiProvider;

  @override
  Future<MusicOffer> getMusicOffer() async {
    final musicOfferDto = await _apiProvider.getMusicOffer();
    return MusicOffer.fromDto(musicOfferDto);
  }
}
