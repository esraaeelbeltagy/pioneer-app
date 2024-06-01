import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'subscibtions_event.dart';
part 'subscibtions_state.dart';

class SubscibtionsBloc extends Bloc<SubscibtionsEvent, SubscibtionsState> {
  SubscibtionsBloc() : super(SubscibtionsInitial()) {
    on<SubscibtionsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
