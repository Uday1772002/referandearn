import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:refer_and_earn/presentation/refer_and_earn_screen/models/refer_and_earn_model.dart';
part 'refer_and_earn_event.dart';
part 'refer_and_earn_state.dart';

/// A bloc that manages the state of a ReferAndEarn according to the event that is dispatched to it.
class ReferAndEarnBloc extends Bloc<ReferAndEarnEvent, ReferAndEarnState> {
  ReferAndEarnBloc(ReferAndEarnState initialState) : super(initialState) {
    on<ReferAndEarnInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReferAndEarnInitialEvent event,
    Emitter<ReferAndEarnState> emit,
  ) async {}
}
