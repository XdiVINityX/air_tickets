part of 'tickets_bloc.dart';

@freezed
sealed class TicketsEvent with _$TicketsEvent {
  const factory TicketsEvent.initial() = TicketsEvent$Initial;
  const factory TicketsEvent.loading() = TicketsEvent$Loading;
  const factory TicketsEvent.inputDestinationChanged(String query) = InputDestination$Changed;
}
