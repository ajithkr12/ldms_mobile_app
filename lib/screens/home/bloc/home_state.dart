part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required int selectedTab,
    required int indexNumber,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
      indexNumber: 0,
      selectedTab: 0,
    );
  }
}
