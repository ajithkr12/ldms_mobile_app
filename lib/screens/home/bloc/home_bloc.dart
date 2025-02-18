import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  int postPage = 0;
  HomeBloc() : super(HomeState.initial()) {
    on<SelectTab>((event, emit) {
      postPage = 0;
      emit(state.copyWith(selectedTab: event.id, indexNumber: 0));
      // add(const GetContents());
    });
  }
}
