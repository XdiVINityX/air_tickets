import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_event.dart';
part 'tickets_state.dart';
part 'tickets_bloc.freezed.dart';

class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  TicketsBloc() : super(const TicketsState.initial()) {
    on<TicketsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
