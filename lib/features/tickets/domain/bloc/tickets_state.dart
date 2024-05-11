part of 'tickets_bloc.dart';

@freezed
sealed class TicketsState with _$TicketsState {
  const factory TicketsState.initial({
    @Default([]) List<Offer> offers,
  }) = TicketsState$Initial;

  const factory TicketsState.loading({
    @Default([])  List<Offer> offers,
  }) = TicketsState$Loading;

  const factory TicketsState.loadingSuccess({
    required List<Offer> offers,
  }) = TicketsState$loadingSuccess;

  // TODO(delete):
  const factory TicketsState.test({
  @Default([]) List<Offer> offers,
}) = TicketsState$Test;

  const factory TicketsState.error({
    @Default([]) List<Offer> offers,
    required String message,
  }) = TicketsState$Error;
}
