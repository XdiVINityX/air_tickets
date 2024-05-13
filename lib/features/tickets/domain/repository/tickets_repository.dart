import 'package:air_tickets/features/tickets/domain/entity/music_offer.dart';

abstract interface class ITicketsRepository{
  Future<MusicOffer> getMusicOffer();

  Future<void> saveFlyFromPreferences(String from);

  Future<String?> getFlyFromPreferences();
}
