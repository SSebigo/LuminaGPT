import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lumina_gpt/domain/core/core_failure.dart';
import 'package:lumina_gpt/domain/sessions/session.dart';
import 'package:oxidized/oxidized.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// @nodoc
  HomeBloc() : super(HomeState.initial()) {
    on<AppLaunched>((_, emit) async {});
    on<NewSessionPressed>((_, emit) async {});
    on<DeleteSessionPressed>((_, emit) async {});
  }
}
