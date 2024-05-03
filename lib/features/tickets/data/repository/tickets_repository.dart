import 'package:air_tickets/features/tickets/data/dto/music_offer_dto.dart';
import 'package:air_tickets/features/tickets/data/source/network/tickets_api_provider.dart';
import 'package:air_tickets/features/tickets/domain/repository/tickets_repository.dart';

class TicketsRepository implements ITicketsRepository{
  TicketsRepository({required ITicketsApiProvider apiProvider }) :
      _apiProvider = apiProvider;

  final ITicketsApiProvider _apiProvider;

  @override
  Future<List<MusicOfferDto>> getMusicOffer() async {
    // тут будем получать модель в интерфейса тоже исправить
    final musicOfferDto = await _apiProvider.getMusicOffer();
    return musicOfferDto;
  }

}
