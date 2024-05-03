import 'package:air_tickets/core/utils/app_exception.dart';
import 'package:air_tickets/core/utils/server_exceptions.dart';
import 'package:air_tickets/features/tickets/data/dto/music_offer_dto.dart';
import 'package:air_tickets/features/tickets/data/source/network/tickets_api_provider.dart';
import 'package:dio/dio.dart';

const url = 'https://run.mocky.io/v3/00727197-24ae-48a0-bcb3-63eb35d7a9de';

class AppApiProvider implements ITicketsApiProvider{
  AppApiProvider({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<MusicOfferDto>> getMusicOffer() async {
    try {
      final response = await _dio.get<List<dynamic>>(
        url,
      );
      final data = response.data?.cast<Map<String, dynamic>>().toList() ?? [];
      final offers = data.map(MusicOfferDto.fromJson).toList();
      return offers;
    } on DioException catch (e) {
      throw ServerException(e);
    } on Object catch (e) {
      throw AppException(internalMessage: e.toString());
    }
  }
}
