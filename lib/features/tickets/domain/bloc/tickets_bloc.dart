import 'package:air_tickets/core/utils/app_exception.dart';
import 'package:air_tickets/core/utils/server_exceptions.dart';
import 'package:air_tickets/features/tickets/domain/entity/music_offer.dart';
import 'package:air_tickets/features/tickets/domain/repository/tickets_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_event.dart';

part 'tickets_state.dart';

part 'tickets_bloc.freezed.dart';

class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  TicketsBloc({required ITicketsRepository repository})
      : _repository = repository,
        super(const TicketsState$Initial()) {
    on<TicketsEvent>(
      (event, emitter) => switch (event) {
        final TicketsEvent$Initial event => _initial(emitter, event),
        final TicketsEvent$Loading event => throw UnimplementedError(),
      },
    );
  }

  final ITicketsRepository _repository;

  Future<void> _initial(
    Emitter<TicketsState> emitter,
    TicketsEvent event,
  ) async {
    try {
      emitter(const TicketsState$Loading());
      final data = await _repository.getMusicOffer();
      emitter(TicketsState$loadingSuccess(offers: data.offers));
    } on ServerException catch (e, s) {
      debugPrint('ServerException: ${e.message}');
      debugPrint('ServerException: $s');
      debugPrint('Internal Message: ${e.internalMessage}');
      emitter(TicketsState$Error(message: e.message));

      // TODO(Delete):
      emitter(TicketsState$Test());


    } on AppException catch (e) {
      emitter(TicketsState$Error(message: e.message));
      debugPrint('AppException: ${e.message}');
      debugPrint('AppException Internal Message: ${e.internalMessage}');
    } on Object catch (e) {
      emitter(TicketsState$Error(message: 'Непредвиденная ошибка: $e'));
    }
  }
}
