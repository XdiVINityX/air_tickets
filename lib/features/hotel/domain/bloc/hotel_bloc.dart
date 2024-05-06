import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';
part 'hotel_bloc.freezed.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  HotelBloc() : super(const HotelState.initial()) {
    on<HotelEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
