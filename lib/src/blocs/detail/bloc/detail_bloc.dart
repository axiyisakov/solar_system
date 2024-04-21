import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:solar_system/src/data/models/planet_enum.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final PlanetEnum planet;
  DetailBloc({
    required this.planet,
  }) : super(DetailInitial()) {
    on<DetailEvent>((event, emit) {});
  }
}
