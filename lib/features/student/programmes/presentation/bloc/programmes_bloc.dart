import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'programmes_event.dart';
part 'programmes_state.dart';

class ProgrammesBloc extends Bloc<ProgrammesEvent, ProgrammesState> {
  ProgrammesBloc() : super(ProgrammesInitial()) {
    on<ProgrammesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
