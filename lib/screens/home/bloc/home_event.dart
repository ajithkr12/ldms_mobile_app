part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;

  const factory HomeEvent.selectTab(int id) = SelectTab;
  // const factory HomeEvent.selectDropDown(int id) = SelectDropDown;
}
