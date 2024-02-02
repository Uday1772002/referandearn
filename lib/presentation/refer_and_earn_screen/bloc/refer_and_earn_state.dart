// ignore_for_file: must_be_immutable

part of 'refer_and_earn_bloc.dart';

/// Represents the state of ReferAndEarn in the application.
class ReferAndEarnState extends Equatable {
  ReferAndEarnState({this.referAndEarnModelObj});

  ReferAndEarnModel? referAndEarnModelObj;

  @override
  List<Object?> get props => [
        referAndEarnModelObj,
      ];
  ReferAndEarnState copyWith({ReferAndEarnModel? referAndEarnModelObj}) {
    return ReferAndEarnState(
      referAndEarnModelObj: referAndEarnModelObj ?? this.referAndEarnModelObj,
    );
  }
}
