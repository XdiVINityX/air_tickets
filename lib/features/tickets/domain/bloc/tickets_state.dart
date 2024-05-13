part of 'tickets_bloc.dart';

@freezed
sealed class TicketsState with _$TicketsState {
  const factory TicketsState.initial({
    @Default([]) List<Offer> offers,
    @Default('') String? queryDestination,
  }) = TicketsState$Initial;

  const factory TicketsState.loading({
    @Default([]) List<Offer> offers,
    @Default('') String? queryDestination,
  }) = TicketsState$Loading;

  const factory TicketsState.loadingSuccess({
    required List<Offer> offers,
    @Default('') String? queryDestination,
  }) = TicketsState$loadingSuccess;

  const factory TicketsState.error({
    @Default([]) List<Offer> offers,
    @Default('') String? queryDestination,
    required String message,
  }) = TicketsState$Error;
}
