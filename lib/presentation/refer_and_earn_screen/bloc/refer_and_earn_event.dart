// ignore_for_file: must_be_immutable

part of 'refer_and_earn_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReferAndEarn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReferAndEarnEvent extends Equatable {}

/// Event that is dispatched when the ReferAndEarn widget is first created.
class ReferAndEarnInitialEvent extends ReferAndEarnEvent {
  @override
  List<Object?> get props => [];
}
