import 'package:air_tickets/features/tickets/data/source/network/tickets_api_provider.dart';
import 'package:air_tickets/features/tickets/domain/entity/music_offer.dart';
import 'package:air_tickets/features/tickets/domain/repository/tickets_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TicketsRepository
    implements ITicketsRepository{
  TicketsRepository({
    required ITicketsApiProvider apiProvider,
    required Future<SharedPreferences> sharedPreferences,
  })  : _apiProvider = apiProvider,
        _sharedPreferences = sharedPreferences;

  final ITicketsApiProvider _apiProvider;
  final Future<SharedPreferences> _sharedPreferences;

  @override
  Future<MusicOffer> getMusicOffer() async {
    final musicOfferDto = await _apiProvider.getMusicOffer();
    return MusicOffer.fromDto(musicOfferDto);
  }

  @override
  Future<String?> getFlyFromPreferences() async {
    final prefs = await _sharedPreferences;
    return prefs.getString('from');
  }

  @override
  Future<void> saveFlyFromPreferences(String query) async {
    final prefs = await _sharedPreferences;
    await prefs.setString('from', query);
  }

}

